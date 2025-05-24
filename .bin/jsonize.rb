# frozen_string_literal: true

require 'json'

# nested hashes
def string_to_hash(input = ["{}"])
  input
    .map { |group| group.split(':') }
    .to_h
end

output = ''

command_line_args = ARGV.map(&:strip)
initial_character = command_line_args.first[0] || ''

if initial_character.empty?
  puts [
         "Please  specify either a series of key values pairs, or a hash: ",
         " - jsonize key:value test:app",
         " - jsonize {'key': 'value'} ",
         " - jsonize [{'key': 'value'}, {'key': 'value'}] "
       ]
end

if initial_character == '{' || initial_character == '['
  pp command_line_args.join(' ')
  output = JSON.parse(command_line_args)
end

if command_line_args[0].include?(':')
  begin
    output = string_to_hash(command_line_args)
  rescue ArgumentError => e
    puts "Error: Invalid argument format. Please use 'key:value' pairs."
  end
end

puts JSON.generate(output)
