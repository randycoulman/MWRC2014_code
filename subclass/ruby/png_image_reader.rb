class PNGImageReader < ImageReader
  def self.can_read?(io)
    io.read(8) == "\x89PNG\r\n\x1A\n".b
  end

  def read_image
    puts "Reading PNG"
  end
end
