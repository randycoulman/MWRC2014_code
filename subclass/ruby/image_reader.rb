class ImageReader

  def self.read(filename)
    File.open(filename, "rb") do |io|
      reader_class = find_reader_class(io)
      raise "Unknown image type: #{filename}" unless reader_class
      reader_class.new(io)
    end
  end

  def self.find_reader_class(io)
    subclasses.find { |reader|
      begin
        io.rewind
        reader.can_read?(io)
      ensure
        io.rewind
      end
    }
  end

  def self.inherited(subclass)
    subclasses << subclass
  end

  def self.subclasses
    @subclasses ||= []
  end

  def initialize(io)
    @stream = io
    read_image
  end

  attr_reader :image

  def read_image
    raise "Subclasses must implement this method"
  end

end
