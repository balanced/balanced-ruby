YARD::Templates::Engine.register_template_path Pathname.new(YARD::ROOT).join('./', 'balanced_templates')
YARD::Parser::SourceParser.parser_type = :ruby19
