require_relative "input"
require_relative "sorter"
require "pry"

input = Input.new
mode = input.get_mode

unless mode
  puts "Usage:"
  puts "ruby app/parser.rb webserver.log -most_views"
  puts "ruby app/parser.rb webserver.log -unique_views"
  exit 1
end

input.clean_arguments_for_file_read!

case mode
when "most_views"
  Sorter.new(input, $stdout).sort_by_most_views
end

