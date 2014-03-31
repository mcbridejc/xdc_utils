#!/bin/env ruby

require 'csv'

if(ARGV.length < 2) 
  puts "Usage: csv2xdc.rb <csv_input_file> <xdc_output_file>"
  exit
end

infile = ARGV[0]
outfile = ARGV[1]

i = 0;
# Read the CSV, but skip the first line which is assumed to be a header
data = CSV.read(infile)[1..-1] 

File.open(outfile, "w") do |f|
  #  Write IO type
  data.each do |row| 
    f.write("set_property IOSTANDARD #{row[2]} [get_ports #{row[0]}]\n")
  end
  # Write pin assignment
  data.each do |row|
    f.write("set_property PACKAGE_PIN #{row[1]} [get_ports #{row[0]}]\n")
  end
end
