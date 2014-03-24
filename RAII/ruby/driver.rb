require_relative "raii"

begin
  foo
rescue Exception => e
  puts "Caught exception: #{e}"
  exit(1)
end
