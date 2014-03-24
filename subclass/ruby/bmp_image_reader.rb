class BMPImageReader < ImageReader
  def self.can_read?(io)
    io.read(2) == "BM"
  end

  def read_image
    puts "Reading BMP"
  end
end
