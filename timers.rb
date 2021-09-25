
require 'colorize'
require 'timers'
require 'bundler'
require 'tty'
# require_relative 'ascii.rb'


# seconds = eval(ARGV[0]).to_i
# start_time = Time.now

# loop do
#   elapsed = Time.now - start_time
#   print "\e[D" * 17
#   print "\033[K"

#   if elapsed > seconds
#     puts "Time's up!"
#     exit
#   end

#   print Time.at(seconds - elapsed).utc.strftime('%H:%M:%S.%3N')
#   sleep(0.05)
# end

Timers::Group.new
timers = Timers::Group.new
Timers::Group#after
two_second_timer = timers.after(2) { puts "Stretch your shoulders" }
five_second_timer = timers.after(5) { puts "jump"}
Timers::Timer#cancel 

Timers::Group#wait
# Waits 5 seconds
timers.wait
# The script will now print "Strecth your shoulders"
Timers::Group#every 
every_five_seconds = timers.every(5) { puts "stretch again" }
loop { timers.wait } 

