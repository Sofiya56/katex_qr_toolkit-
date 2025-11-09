#!/usr/bin/env ruby
require_relative "../lib/katex_qr_toolkit"

md = "Einstein: <math>E=mc^2</math>"
html = KatexQrToolkit::Renderer.render_markdown_with_katex(md)
puts "Rendered HTML:\n#{html}"

qr_svg = KatexQrToolkit::Barcode.generate_qr("https://github.com", format: :svg)
File.write("qr.svg", qr_svg)

barcode_png = KatexQrToolkit::Barcode.generate_barcode("1234567890")
File.binwrite("barcode.png", barcode_png)

puts "Готово: QR і штрих-код збережено!"
