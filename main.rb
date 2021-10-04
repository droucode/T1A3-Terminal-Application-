require 'colorize'
require 'timers'
require 'tty-prompt'

require_relative 'menu.rb'


class Energy
    attr_accessor :start, :breathing_a, :breathing_b, :stretch_a, :stretch_b, :stretch_c, :movement_a, :movemnet_b,
    :movement_c, :movement_d, :rest, :goal 
end 

energy_exercise = Energy.new()
energy_exercise.start = "Getting active and into your body is great way to clear your mind and ignite your endorphines, 
before you start a task. Complete these exercises within your capabilities and have fun. This program will 
run for roughly 6 minites. Get ready to get your blood circulating and clear your mind ready to complete your task!"

energy_exercise.breathing_a = "Take 5 deep breaths" 
energy_exercise.breathing_b = "How's your breathing? make sure youre taking deep steady breaths"

energy_exercise.stretch_a = "30 seconds, stretch each shoulder"
energy_exercise.stretch_b = "30 seconds, stretech your neck side to side"
energy_exercise.stretch_c = "30 seconds, touch your toes, or where youre comfortable to reach"

energy_exercise.movement_a = "30 seconds, jog on the spot "
energy_exercise.movemnet_b = "30 seconds, alernating arm punches (across your body)"
energy_exercise.movement_c = "30 seconds, squats"
energy_exercise.movement_d = "30 seconds, startjumps"

energy_exercise.rest = "check your breath and rest for 10 seconds"
energy_exercise.goal = "Now that you're done, take some a couple seconds to think about what you would like
to achieve, keep your goal achievable and work in small and prodictive blocks. Goodluck!"


# puts energy_exercise.breathing 
# puts energy_exercise.stretch
# puts energy_exercise.intensity


class Mindfulness
    attr_accessor :start, :breathing_a, :breathing_b, :breathing_c, :breathing_d, :breathing_e,
    :breathing_f, :breathing_g, :breathing_h, :breathing_i, :breathing_j, :body_a, :body_b, :goal_a, :goal_b,
    :goal_c
end 
mind_exercise = Mindfulness.new()
mind_exercise.start = "Mindfullness is very usful activity in acepting and redicing 
stress and anxiety built up on your body, you can practice mindfulness as many times a day as you like. 
this exercise will run for 6 minutues. Clear your minf before you start your task"

mind_exercise.breathing_a = "Take 3 deep slow breaths and take 30 seconds to scan your body"
mind_exercise.breathing_b = "Notice 3 things your can hear"
mind_exercise.breathing_c = "Notice 3 things your can see"
mind_exercise.breathing_d = "Bring your attention to your breath"
mind_exercise.breathing_e = "Be aware of the movement of your body, how your chest rises and falls"
mind_exercise.breathing_f = "Find a pattern in your breath and achor yourself to it"
mind_exercise.breathing_g = "Notice any discomfort in your body, any tention in your shoulders?"
mind_exercise.breathing_h = "Keep focus on your breath and continue to scan your body"
mind_exercise.breathing_i= "Dont lose focus of your breath, thats your anchor"


mind_exercise.body_a = "Slowly, start to roll your shoulders-5 times on each side"
mind_exercise.body_b = "Lightly strech your neck from side to side"
mind_exercise.goal_a = "Start to visualise what you would like to achieve today"
mind_exercise.goal_b = "Keep your goal realistic and achievable"
mind_exercise.goal_c = "think about how long you're going to set your alarm and remember small and steady steps, goodluck!"

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
start = timers.after(2) {puts energy_exercise.start}
timer = timers.after(4) {puts energy_exercise.breathing_a} 
timer = timers.after(6) {puts energy_exercise.stretch_a} 
timer = timers.after(8) {puts energy_exercise.stretch_b} 
timer = timers.after(10) {puts energy_exercise.stretch_c} 

timer = timers.after(12) {puts energy_exercise.breathing_b}
timer = timers.after(14) {puts energy_exercise.movement_a} 
timer = timers.after(16) {puts energy_exercise.rest}
timer = timers.after(18) {puts energy_exercise.movemnet_b} 
timer = timers.after(20) {puts energy_exercise.movement_c} 
timer = timers.after(22) {puts energy_exercise.rest}
timer = timers.after(24) {puts energy_exercise.movement_d} 
timer = timers.after(26) {puts energy_exercise.goal}

timers.resume 
13.times {timers.wait}

prompt = TTY::Prompt.new
menu_choice = prompt.select(greeting, %w(Repeat Set_Alarm Reflection End))

elsif exercise_choice == "Mindfulness"

start_message = timers.after(2) {puts mind_exercise.start} 
timer = timers.after(4)  {puts mind_exercise.breathing_a}
timer = timers.after(6) {puts mind_exercise.breathing_b}
timer = timers.after(8) {puts mind_exercise.breathing_c}
timer = timers.after(10) {puts mind_exercise.breathing_d} 
timer = timers.after(12) {puts mind_exercise.breathing_e} 
timer = timers.after(14) {puts mind_exercise.breathing_f} 
timer = timers.after(16) {puts mind_exercise.breathing_g} 
timer = timers.after(18) {puts mind_exercise.breathing_h}

timer = timers.after(20) {puts mind_exercise.body_a}
timer = timers.after(22) {puts mind_exercise.body_b}
timer = timers.after(24) {puts mind_exercise.breathing_i}
timer = timers.after(26) {puts mind_exercise.goal_a}
timer = timers.after(28) {puts mind_exercise.goal_b}
timer = timers.after(30) {puts mind_exercise.goal_c}

timers.resume 
15.times {timers.wait}

prompt = TTY::Prompt.new
menu_choice = prompt.select(greeting, %w(Repeat Set_Alarm Reflection End))
else
  puts "forgetting something?"  
end











