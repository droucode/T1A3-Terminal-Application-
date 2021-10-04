require 'colorize'
require 'timers'
require 'tty-prompt'

require_relative 'menu.rb'


class Energy
    attr_accessor :breathing, :stretch, :intensity
end 

energy_exercise = Energy.new()
energy_exercise.breathing = "take 5 deep breaths"
energy_exercise.stretch = "strech your neck side to side"
energy_exercise.intensity = "box across your body"

# puts energy_exercise.breathing 
# puts energy_exercise.stretch
# puts energy_exercise.intensity


class Mindfulness
    attr_accessor :breathing, :stretch, :body
end 

mind_exercise = Mindfulness.new()
mind_exercise.breathing = "take 6 deep breaths"
mind_exercise.stretch = "roll your shoulders"
mind_exercise.body = "visualise"

# puts mind_exercise.breathing
# puts mind_exercise.stretch
# puts mind_exercise.body


greeting = puts "Are you ready?"
    prompt = TTY::Prompt.new
menu_choice = prompt.select(greeting, %w(Pre_Work_Mood Set_Alarm ))

introduction = puts "Select your intensity"
prompt = TTY::Prompt.new
exercise_choice = prompt.select(introduction) do |menu|
    menu.choice "Energise"
    menu.choice "Mindfulness"
end 

Timers::Group.new
timers = Timers::Group.new
Timers::Group#after
Timers::Timer#cancel

if exercise_choice == "Energise" 
two_second_timer = timers.after(2) { puts energy_exercise.breathing}
four_second_timer = timers.after(4) { puts energy_exercise.stretch}
six_second_timer = timers.after(6) { puts energy_exercise.intensity}
timers.resume 
10.times {timers.wait}

prompt = TTY::Prompt.new
menu_choice = prompt.select(greeting, %w(Set_Alarm Reflection End))

elsif exercise_choice == "Mindfulness"

two_second_timer = timers.after(2) { puts mind_exercise.breathing}
four_second_timer = timers.after(4) { puts mind_exercise.stretch}
six_second_timer = timers.after(6) { puts mind_exercise.body}
timers.resume 
10.times {timers.wait}

prompt = TTY::Prompt.new
menu_choice = prompt.select(greeting, %w(Set_Alarm Reflection End))

else
    
end











