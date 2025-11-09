require 'kramdown'
require 'Katex'

module KatexQrToolkit
  class Renderer
    def self.render_markdown_with_katex(md_text)
      html = Kramdown::Document.new(md_text).to_html
      html.gsub(/<math>(.*?)<\/math>/m) do
        KaTeX.render($1.strip)
      end
    end
  end
end
