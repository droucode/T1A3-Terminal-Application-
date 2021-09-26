
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
    high_intensity = ["starjumps", "situps"],
    low_intensity = ["breathing", "meditation"] 
]
# setting intensity variable storing the matching array as value
high = exercise[0]
low = exercise[1]

# greeting to user prompting a selection
introduction = puts "Please select your intensity 💪🏾"
prompt = TTY::Prompt.new

exercise_choice = prompt.select(introduction) do |menu|
    menu.choice "High"
    menu.choice "Low"
end 

if exercise_choice == "High"
	puts high
elsif exercise_choice == "Low"
    puts low
else
    puts "Forgetting something?"
end


# variable for user input (exercise intensity)






# ask for exercise selection
# selection_variable = gets.chomp()
# if exercise high_intensity then iterate through each item in that array
# elsif exercise low_intensity then iterate through each item in that array
# else (no selection) puts "forgetting something?"
two_second_timer = timers.after(5) { puts high[0]}
five_second_timer = timers.after(20) { puts exercise[1]}
Timers::Timer#cancel 

Timers::Group#wait
# Waits 5 seconds
timers.wait
# The script will now print "Strecth your shoulders"
Timers::Group#every 
every_five_seconds = timers.every(100) { puts "stretch again" }
loop { timers.wait } 

