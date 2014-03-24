class JPGImageReader < ImageReader
  def self.can_read?(io)
    io.read(2) == "\xFF\xD8".b
  end

  def read_image
    puts "Reading JPG"
  end
end
