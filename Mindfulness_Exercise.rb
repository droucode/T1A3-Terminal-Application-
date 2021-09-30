require 'colorize'
require 'timers'
require 'tty-prompt'

require_relative 'ascii.rb'
require_relative 'menu.rb'


Mindfulness_Exercise = {
    "deep" => "take 5 deep breaths",
    "visualise" => "visualise what you would like to achieve",
    "stretch" => "gently roll your shoulders, feeling your breath through your body"
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

timers.after(8) { puts Mindfulness_Exercise["deep"]}
timers.after(10) { puts Mindfulness_Exercise["visualise"]}
timers.after(12) { puts Mindfulness_Exercise["stretch"]}

loop { timers.wait } 
