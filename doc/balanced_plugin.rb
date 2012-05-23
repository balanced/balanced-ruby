YARD::Templates::Engine.register_template_path Pathname.new(YARD::ROOT).join('./', 'balanced_templates')
YARD::Parser::SourceParser.parser_type = :ruby19

module YARD
  module Templates::Helpers
        # The helper module for HTML templates.
    module HtmlHelper
      def signature(meth, link = true, show_extras = true, full_attr_name = true)
        meth = convert_method_to_overload(meth)

        type = signature_types(meth, link)
        scope = meth.scope == :class ? "+" : "-"
        name = full_attr_name ? meth.name : meth.name.to_s.gsub(/^(\w+)=$/, '\1')
        blk = format_block(meth)
        args = !full_attr_name && meth.writer? ? "" : format_args(meth)
        extras = []
        extras_text = ''
        if show_extras
          if rw = meth.attr_info
            attname = [rw[:read] ? 'read' : nil, rw[:write] ? 'write' : nil].compact
            attname = attname.size == 1 ? attname.join('') + 'only' : nil
            extras << attname if attname
          end
          extras << meth.visibility if meth.visibility != :public
          extras_text = ' <span class="extras">(' + extras.join(", ") + ')</span>' unless extras.empty?
        end
        title = "<span class='scope'>%s</span> <span class='return-type'>%s</span><strong>%s</strong><span class='args'>%s</span> %s" % [scope, type, h(name), args, blk]
        if link
          if meth.is_a?(YARD::CodeObjects::MethodObject)
            link_title = "#{ h meth.name(true)} (#{meth.scope} #{meth.type})"
          else
            link_title = "#{ h name} (#{meth.type})"
          end
          obj = meth.respond_to?(:object) ? meth.object : meth
          url = url_for(object, obj)
          link_url(url, title, :title => link_title) + extras_text
        else
          title + extras_text
        end
      end
    end
  end
end
