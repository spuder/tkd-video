#!/usr/bin/env ruby

require 'yaml'
require 'erb' #https://stackoverflow.com/a/25626629/1626687
include ERB::Util

gifs = YAML.load_file(File.join(__dir__,'../giphy.yaml'))

# Create variable jrred from gifs where key matches red* case insensitive
jr_brown=[]
sr_brown=[]
jr_red = gifs.select { |k,v| k.match(/JuniorRed*/) || k.match(/Taegeuk7Jang/)  }
sr_red = gifs.select { |k,v| k.match(/SeniorRed*/) || k.match(/Taegeuk8Jang/)  }

# jrred = gifs.select { |k| k == 'SeniorRedForm-complete-640.gif' }

# Loop through all files ending in .erb in the templates directory
Dir.glob("templates/*.erb").each do |file|
  # Get the filename without the .erb extension
  filename = File.basename(file, ".erb")
  # Load the file and render it with ERB
    template = ERB.new(File.read(file), nil, '-')
  # Write the rendered file to the output directory
  File.open("#{filename}", 'w') { |f| f.write(template.result(binding)) }
end
