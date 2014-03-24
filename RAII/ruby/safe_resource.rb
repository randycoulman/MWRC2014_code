class SafeResource
  def self.acquire
    resource = self.new
    yield resource
  ensure
    resource.release
  end

  def initialize
    puts "Acquiring resource"
    @resource = Object.new
  end

  def release
    puts "Releasing resource"
    @resource = nil
  end
end
