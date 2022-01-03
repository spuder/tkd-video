#!/usr/bin/env ruby

require 'yaml'
require 'erb' #https://stackoverflow.com/a/25626629/1626687
include ERB::Util

gifs = YAML.load_file(File.join(__dir__,'../giphy.yaml'))

jr_green = gifs.select { |k,v| k.match(/JuniorGreen*/) || k.match(/Taegeuk1Jang/)  }
sr_green = gifs.select { |k,v| k.match(/SeniorGreen*/) || k.match(/Taegeuk2Jang/) }
jr_blue = gifs.select { |k,v| k.match(/JuniorBlue*/) || k.match(/Taegeuk3Jang/)  }
sr_blue = gifs.select { |k,v| k.match(/SeniorBlue*/) || k.match(/Taegeuk4Jang/) }
jr_brown = gifs.select { |k,v| k.match(/JuniorBrown*/) || k.match(/Taegeuk5Jang/)  }
sr_brown = gifs.select { |k,v| k.match(/SeniorBrown*/) || k.match(/Taegeuk6Jang/)  }
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
