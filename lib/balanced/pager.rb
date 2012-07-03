require "cgi"

module Balanced
  class Pager
    include Enumerable

    # A pager for paginating through resource records.
    def initialize uri, options = {}
      @uri = uri
      @options = options
      @page = nil
      @resource_class = nil
    end

    def resource_class
      return @resource_class unless @resource_class.nil?
      load! unless @page
      @resource_class = Balanced.from_uri @page[:items][0][:uri]
    end

    # @return [Integer] The total record count of the resource in question.
    # @see Resource.count
    def count
      nil
    end

    def first
      load! unless @page
      resource_class.construct_from_response @page[:items][0]
    end

    def total
      load! unless @page
      @page[:total]
    end

    def limit
      load! unless @page
      @page[:limit]
    end

    def offset
      load! unless @page
      @page[:offset]
    end

    # @return [Array] Iterates through the current page of records.
    # @yield [record]
    def each
      return enum_for :each unless block_given?
      load! unless @page
      @page[:items].each do |record|
        yield resource_class.construct_from_response record
      end

    end

    # @return [nil]
    # @see Resource.find_each
    # @yield [record]
    def find_each
      return enum_for :find_each unless block_given?
      begin
        each { |record| yield record }
      end while self.next
    end

    # @return [Array, nil] Refreshes the pager's collection of records with
    #   the next page.
    def next
      load! unless @page
      next_uri = @page[:next_uri]
      load_from next_uri, nil unless next_uri.nil?
    end

    # @return [Array, nil] Refreshes the pager's collection of records with
    #   the previous page.
    def prev
      load! unless @page
      prev_uri = @page[:prev_uri]
      load_from prev_uri, nil unless prev_uri.nil?
    end

    # @return [Array, nil] Refreshes the pager's collection of records with
    #   the first page.
    def start
      load! unless @page
      first_page = @page[:first_page]
      load_from first_page, nil unless first_page.nil?
    end

    # @return [Array, nil] Load (or reload) the pager's collection from the
    #   original, supplied options.
    def load!
      load_from @uri, @options
    end
    alias reload load!

    # @return [Pager] Duplicates the pager, updating it with the options
    #   supplied. Useful for resource scopes.
    # @see #initialize
    def paginate options = {}
      dup.instance_eval {
        @page = nil
        @options.update options and self
      }
    end
    alias scoped paginate
    alias where  paginate

    def all options = {}
      paginate(options).to_a
    end

    def find uri
      if resource_class.respond_to? :find
        raise NoMethodError,
            "#find must be called on #{resource_class} directly"
      end

      resource_class.find uri
    end


    private

    def load_from uri, params
      parsed_uri = URI.parse(uri)
      params.merge! CGI::parse(parsed_uri.query) if !parsed_uri.query.nil?
      parsed_uri.query = URI::encode_www_form(params)
      @uri = parsed_uri.to_s

      response = Balanced.get uri

      @page = Balanced::Utils.hash_with_indifferent_read_access response.body

    end

  end
end