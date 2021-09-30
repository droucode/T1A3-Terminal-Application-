
require 'colorize'
require 'timers'
require 'tty-prompt'

require_relative 'ascii.rb'
require_relative 'menu.rb'

Timers::Group.new
timers = Timers::Group.new
Timers::Group#after

# exercise variable is an array containing two arrays for exercise types
exercise = [
    energy_high_intensity = ["take 5 deep breaths, ", "jog on the spot, ", "cross arm boxing, ", "5 deep breaths"],
    mind_low_intensity = ["take 5 slow deep breaths, ", "visualise what you would like to achive, ", "deep breaths and stretch out your shoulders"] 
]
# setting intensity variable storing the matching array as value
high = exercise[0]
low = exercise[1]

#timers 
# for exercise.energy_high_intensity.length
#     timers.after(1) puts energy_high_intensity.each
# end

h1_exercise = timers.after(1) { puts exercise[0][0]}
h2_exercise = timers.after(20) { puts exercise[1][0]}


l1_exercise= timers.after(1) { puts exercise[0][1]}
l2_exercise= timers.after(20) { puts exercise[1][1]}
Timers::Timer#cancel 

Timers::Group#wait
# Waits 5 seconds
timers.wait
# The script will now print "Strecth your shoulders"
Timers::Group#every 
every_five_seconds = timers.every(20) { puts "testing functinality" }
loop { timers.wait } 

