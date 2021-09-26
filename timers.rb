
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

# greeting to user prompting a selection
introduction = puts "Select your intensity"
prompt = TTY::Prompt.new

# variable for user input (exercise intensity)
# ask for exercise selection
# selection_variable = gets.chomp()
# if exercise high_intensity then iterate through each item in that array
# elsif exercise low_intensity then iterate through each item in that array
# else (no selection) puts "forgetting something?"

exercise_choice = prompt.select(introduction) do |menu|
    menu.choice "Energise"
    menu.choice "Mindfulness"
end 

if exercise_choice == "Energise"
	puts 
elsif exercise_choice == "Mindfulness"
    puts 
else
    puts "Forgetting something?"
end

#timers 

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
every_five_seconds = timers.every(100) { puts "stretch again" }
loop { timers.wait } 

