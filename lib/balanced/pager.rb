require "cgi"

module Balanced
  class Pager
    DEFAULT_SEP = /[&;] */n
    DEFAULT_LIMIT = 10

    include Enumerable

    attr_accessor :href
    attr_accessor :options

    # A pager for paginating through resource records.
    #
    # @param [String] uri the uri of the resource
    # @param [Hash] options
    # @option options [Integer] limit
    # @option options [Integer] offset
    # @option options [Integer] per an alias for the :limit option
    def initialize(href, options = {})
      @href = href
      @options = options
      @page = nil
      @resource_class = nil
    end

    def resource_class
      return @resource_class unless @resource_class.nil?
      load! unless @page
      @resource_class
    end

    def first
      load! unless @page
      if items.first.nil?
        nil
      else
        envelope = {
          :meta => @page[:meta],
          :links => @page[:links],
          @resource_class.collection_name.to_sym => [items.first]
        }
        resource_class.construct_from_response(envelope)
      end
    end

    def total
      load! unless @page
      @page[:meta][:total]
    end

    def limit
      load! unless @page
      @page[:meta][:limit]
    end
    alias limit_value limit

    def offset
      load! unless @page
      @page[:meta][:offset]
    end
    alias offset_value offset

    def items
      load! unless @page
      if @resource_class.nil?
        []
      else
        @page[@resource_class.collection_name]
      end
    end

    def current_page
      (offset / limit) + 1
    end

    def num_pages
      num = total / limit
      num += 1 if total % limit > 0
      num
    end

    # @return [Array] Iterates through the current page of records.
    # @yield [record]
    def each
      return enum_for :each unless block_given?

      load! unless @page
      loop do
        items.each do |r|
          envelope = {
            :meta => @page[:meta],
            :links => @page[:links],
            @resource_class.collection_name.to_sym => [r]
          }
          yield resource_class.construct_from_response(envelope)
        end
        raise StopIteration if @page[:meta][:next].nil?
        self.next
      end
    end

    # @return [nil]
    # @see Resource.fetch_each
    # @yield [record]
    def fetch_each
      return enum_for :fetch_each unless block_given?
      begin
        each { |record| yield record }
      end while self.next
    end

    # @return [Array, nil] Refreshes the pager's collection of records with
    #   the next page.
    def next
      load! unless @page
      next_uri = @page[:meta][:next]
      load_from next_uri, nil unless next_uri.nil?
    end

    # @return [Array, nil] Refreshes the pager's collection of records with
    #   the previous page.
    def prev
      load! unless @page
      prev_uri = @page[:meta][:prev]
      load_from prev_uri, nil unless prev_uri.nil?
    end

    # @return [Array, nil] Refreshes the pager's collection of records with
    #   the first page.
    def start
      load! unless @page
      first_page = @page[:meta][:first]
      load_from first_page, nil unless first_page.nil?
    end

    # @return [Array, nil] Load (or reload) the pager's collection from the
    #   original, supplied options.
    def load!
      load_from @href, @options
    end
    alias reload load!

    # @return [Pager] Duplicates the pager, updating it with the options
    #   supplied. Useful for resource scopes.
    # @see #initialize
    def paginate(options = {})
      dup.instance_eval {
        @page = nil
        @options.update options and self
      }
    end
    alias scoped paginate
    alias where  paginate

    def all(options = {})
      paginate(options).to_a
    end

    def fetch(uri)
      if resource_class.respond_to? :find
        raise NoMethodError,
            "#find must be called on #{resource_class} directly"
      end

      resource_class.fetch uri
    end

    def create(options={})
      opts = Balanced::Utils.indifferent_read_access options
      opts[:href] = @href
      # if we don't have a media type for the href,
      # let's try to inspect the url to look it up from the
      # registry
      if @resource_class.nil?
        @resource_class = Balanced.from_href(@href)
      end
      @resource_class.new(opts).save
    end


    private

    def load_from(uri, params)
      parsed_uri = URI.parse(uri)

      params ||= {}
      params = adjust_pagination_params(params)

      unless parsed_uri.query.nil?
        # The reason we don't use CGI::parse here is because
        # the balanced api currently can't handle variable[]=value.
        # Faraday ends up encoding a simple query string like:
        #    {"limit"=>["10"], "offset"=>["0"]}
        # to limit[]=10&offset[]=0 and that's cool, but
        # we have to make sure balanced supports it.
        query_params = parse_query(parsed_uri.query)
        params.merge! query_params
        parsed_uri.query = nil
      end

      response = Balanced.get parsed_uri.to_s, params
      @page = Balanced::Utils.indifferent_read_access response.body

      @href = @page[:meta][:href]
      # resource_class?
      hypermedia_key = (@page.keys.map{|k| k.to_sym } - [:meta, :links]).first
      unless hypermedia_key.nil?
        @resource_class = Balanced.from_hypermedia_registry(hypermedia_key.to_s)
      end

      @page
    end

    def adjust_pagination_params(original)
      adjusted = original.dup
      per = adjusted.delete(:per)
      adjusted[:limit] = per unless per.nil?
      page = adjusted.delete(:page)
      adjusted[:offset] = (adjusted[:limit] || DEFAULT_LIMIT) * ([page, 1].max - 1) unless page.nil?
      adjusted
    end

    # Stolen from Mongrel, with some small modifications:
    # Parses a query string by breaking it up at the '&'
    # and ';' characters.  You can also use this to parse
    # cookies by changing the characters used in the second
    # parameter (which defaults to '&;').
    def parse_query(qs, d = nil)
      params = {}

      (qs || '').split(d ? /[#{d}] */n : DEFAULT_SEP).each do |p|
        k, v = p.split('=', 2).map { |x| CGI::unescape(x) }
        if (cur = params[k])
          if cur.class == Array
            params[k] << v
          else
            params[k] = [cur, v]
          end
        else
          params[k] = v
        end
      end

      params
    end
  end
end