require_relative "input"

mode = Input.new.get_mode

unless mode
  puts "Usage:"
  puts "ruby app/parser.rb webserver.log -most_views"
  puts "ruby app/parser.rb webserver.log -unique_views"
  exit 1
end

case mode
when "most_views"
end

