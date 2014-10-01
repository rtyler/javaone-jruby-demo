# This is a simple little demo to show hwo JRuby automatically converts blocks
# into anonymous classes
require 'colorize'

# java.lang.Thread.new(Runnable target)
thr = java.lang.Thread.new do |runnable|
  String.colors.each do |color|
    puts "Hello JavaOne".colorize(color)
    sleep 0.5
  end
end

thr.run
