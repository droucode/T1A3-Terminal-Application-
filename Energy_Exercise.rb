
require 'colorize'
require 'timers'
require 'tty-prompt'

require_relative 'ascii.rb'
require_relative 'menu.rb'


Energy_Exercise = {
     "breathe" => "take 5 deep breaths",
     "jog" => "jog on the spot",
     "box" => "cross arm box in the air"
}


introduction = puts "Select your intensity"
prompt = TTY::Prompt.new
exercise_choice = prompt.select(introduction) do |menu|
    menu.choice "Energise"
    menu.choice "Mindfulness"
end 

if exercise_choice == "Energise" 
	Energy_Exercise
elsif exercise_choice == "Mindfulness"
    Mindfulness_Exercise
else
    puts "Forgetting something?"
end

Timers::Group.new
timers = Timers::Group.new
    
timers.after(2) { puts Energy_Exercise["breathe"]}
timers.after(4) { puts Energy_Exercise["jog"]}
timers.after(6) { puts Energy_Exercise["box"]}

loop {timers.wait}
