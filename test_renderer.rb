require "minitest/autorun"
require_relative "../lib/katex_qr_toolkit/renderer"

class TestRenderer < Minitest::Test
  def test_render
    input = "Formula: <math>x^2</math>"
    output = KatexQrToolkit::Renderer.render_markdown_with_katex(input)
    assert_includes output, "katex"
  end
end
