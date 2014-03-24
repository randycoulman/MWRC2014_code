require_relative "support"
require_relative "safe_resource"

def foo
  SafeResource.acquire do |resource|
    bar(resource)

    return unless baz(resource) == 42

    puts "Completed successfully!"
  end
end
