#!env ruby
puts "Crystal REPL"
require "pry"
def crystal_eval(crystal)
  File.write("crystal_code.cr", "puts #{crystal}")
  require "open3"
  Open3.popen3("crystal crystal_code.cr") do |stdin, stdout, stderr, wait_thr|
    err = stderr.read
    raise stderr.read unless err.empty?
    return stdout.read
  end
end

# Handle the input, this would probably run some method
# as a part of the DSL you'd have to create. Place this
# repl as your command line interface to your service.
def handle_input(input)
  result = crystal_eval(input)
  puts("=> #{result}")
end

# This is a lambda that runs the content of the block
# after the input is chomped.
repl = -> prompt do
  print prompt
  handle_input(gets.chomp!)
end

# After evaling and returning, fire up the prompt lambda
# again, this loops after every input and exits with
# exit or a HUP.
loop do
  repl[">> "]
end