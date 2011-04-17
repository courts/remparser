#!/usr/bin/env ruby

require 'treetop'
require 'polyglot'
require 'yaml'
require_relative File.join('..', 'lib', 'remparser')

# A simple demonstration script converting the output of 'remind -s' to YAML,
# showing the capabilities of the 'remparser' treetop parser.
#
# This software is licensed under the Creative
# Commons CC0 1.0 Universal License.
# To view a copy of this license, visit
# http://creativecommons.org/publicdomain/zero/1.0/legalcode
#
# @author Patrick Hof

if ARGV[0] == '-h'
  puts "Usage: #{__FILE__} [options] < $STDIN"
  puts ""
  puts "Options:"
  puts "--------"
  puts "-h      Show this help"
  puts ""
  puts "Where $STDIN is the output of 'remind -s'"
  puts ""
  puts "Example:"
  puts "--------"
  puts "remind -s12 ~/.reminders 01 Jan 2011 | #{__FILE__}"
  exit 0
end

parser = RemindParser.new

all_entries = []
$stdin.each_line do |line|
  res = parser.parse(line)
  if !res 
    puts parser.failure_reason
    exit 1
  else
    all_entries << res.content_hash
  end
end

puts all_entries.to_yaml
