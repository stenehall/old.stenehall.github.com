#!/usr/bin/env ruby

css = ""
Dir.glob("../media/css/*.css") do |file|
   css+=IO.read(file)
end
cssfile = File.new("../media/css/combined.css", "w")
cssfile.write(css)
cssfile.close
`yuicompressor -o ../media/css/minified.css ../media/css/combined.css`


