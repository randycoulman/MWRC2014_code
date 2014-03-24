require_relative "image_readers"

%w{bmp jpg png}.each do |ext|
  ImageReader.read("example.#{ext}")
end
