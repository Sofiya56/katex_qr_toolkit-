require "minitest/autorun"
require_relative "../lib/katex_qr_toolkit/barcode"

class TestBarcode < Minitest::Test
  def test_qr_svg
    svg = KatexQrToolkit::Barcode.generate_qr("Hello", format: :svg)
    assert svg.include?("<svg")
  end

  def test_barcode_png
    png = KatexQrToolkit::Barcode.generate_barcode("1234567890", format: :png)
    refute_nil png
  end
end
