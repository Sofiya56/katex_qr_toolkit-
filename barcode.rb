require 'rqrcode'
require 'barby'
require 'barby/barcode/code_128'
require 'barby/outputter/png_outputter'
require 'barby/outputter/svg_outputter'

module KatexQrToolkit
  class Barcode
    def self.generate_qr(data, format: :png)
      qr = RQRCode::QRCode.new(data)
      format == :svg ? qr.as_svg : qr.as_png
    end

    def self.generate_barcode(data, format: :png)
      barcode = Barby::Code128B.new(data)
      format == :svg ? barcode.to_svg : barcode.to_png
    end
  end
end

