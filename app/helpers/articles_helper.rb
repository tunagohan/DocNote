module ArticlesHelper
  require "redcarpet"
  require "coderay"

  class HTMLwithCoderay < Redcarpet::Render::HTML
    def block_code(code, language)
      language = language.split(':')[0]

      case language.to_s
      when 'rb'
        lang = 'ruby'
      when 'yml'
        lang = 'yaml'
      when 'css'
        lang = 'css'
      when 'html'
        lang = 'html'
      when ''
        lang = 'md'
      else
        lang = language
      end

      CodeRay.scan(code, lang).div
    end
  end

  def markdown(text)
    html_render = HTMLwithCoderay.new(filter_html: true, hard_wrap: true)

    options = {
      :autolink => true,
      :space_after_headers => true,
      :no_intra_emphasis => true,
      :tables => true,
      :space_after_headers => true,
      :fenced_code_blocks => true,
      :hard_wrap => true,
      :strikethrough => true,
      :filter_html => true
    }
    unless @markdown
      @markdown = Redcarpet::Markdown.new(html_render, options)
    end

    @markdown.render(text).html_safe
  end
end
