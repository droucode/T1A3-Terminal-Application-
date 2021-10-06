require 'colorize'
require 'timers'
require 'tty-prompt'

require_relative 'menu.rb' 

class Energy_Prompts
    attr_accessor :start, :rest, :goal 
end 
energy_prompt = Energy_Prompts.new()
energy_prompt.start = "Getting active and into your body is great way to clear your mind and ignite your endorphines, 
before you start a task. Complete these exercises within your capabilities and have fun. This program will 
run for roughly 6 minites. Get ready to get your blood circulating and clear your mind ready to complete your task!"
energy_prompt.rest = "check your breath and rest for 10 seconds"
energy_prompt.goal = "Now that you're done, take some a couple seconds to think about what you would like
to achieve, keep your goal achievable and work in small and prodictive blocks. Goodluck!"

class Energy_Breathing 
    attr_accessor :breathing
end 
energy_stage_one = Energy_Breathing.new()
energy_stage_one.breathing = "Take 5 deep breaths" 

class Energy_Stretch
    attr_accessor :stretch_a, :stretch_b, :stretch_c
end 
energy_stage_two = Energy_Stretch.new()
energy_stage_two.stretch_a = "30 seconds, stretch each shoulder"
energy_stage_two.stretch_b = "30 seconds, stretch your neck side to side"
energy_stage_two.stretch_c = "30 seconds, touch your toes, or where youre comfortable to reach"

class Energy_Movement 
    attr_accessor :movement_a, :movement_b, :movement_c, :movement_d
end 
energy_stage_three = Energy_Movement.new()
energy_stage_three.movement_a = "30 seconds, jog on the spot "
energy_stage_three.movement_b = "30 seconds, alernating arm punches (across your body)"
energy_stage_three.movement_c = "30 seconds, squats"
energy_stage_three.movement_d = "30 seconds, startjumps"

class Mind_Prompts
    attr_accessor :start, :goal_a, :goal_b,
    :goal_c
end 
mind_prompts = Mind_Prompts.new()
mind_prompts.start = "Mindfullness is very usful activity in acepting and redicing 
stress and anxiety built up on your body, you can practice mindfulness as many times a day as you like. 
this exercise will run for 6 minutues. Clear your minf before you start your task"
mind_prompts.goal_a = "Start to visualise what you would like to achieve today"
mind_prompts.goal_b = "Keep your goal realistic and achievable"
mind_prompts.goal_c = "think about how long you're going to set your alarm and remember small and steady steps, goodluck!"

class Mind_Breathing 
    attr_accessor :breathing_a, :breathing_b, :breathing_c, :breathing_d, :breathing_e,
    :breathing_f, :breathing_g, :breathing_h, :breathing_i, :breathing_j
end 
mind_stage_one = Mind_Breathing.new()
mind_stage_one.breathing_a = "Take 3 deep slow breaths and take 30 seconds to scan your body"
mind_stage_one.breathing_b = "Notice 3 things your can hear"
mind_stage_one.breathing_c = "Notice 3 things your can see"
mind_stage_one.breathing_d = "Bring your attention to your breath"
mind_stage_one.breathing_e = "Be aware of the movement of your body, how your chest rises and falls"
mind_stage_one.breathing_f = "Find a pattern in your breath and achor yourself to it"
mind_stage_one.breathing_g = "Notice any discomfort in your body, any tention in your shoulders?"
mind_stage_one.breathing_h = "Keep focus on your breath and continue to scan your body"
mind_stage_one.breathing_i = "Dont lose focus of your breath, thats your anchor"

class Mind_Body
    attr_accessor :body_a, :body_b
end 
mind_stage_two = Mind_Body.new()
mind_stage_two.body_a = "Slowly, start to roll your shoulders-5 times on each side"
mind_stage_two.body_b = "Lightly strech your neck from side to side"

prompt = TTY::Prompt.new
main_menu = prompt.select("Before you set your alarm; Run either of the routines Energise and Mindfulness. They will encourage you 
to establish healthy and productive work habits") do |menu|
menu.choice 'Energise Routine'
menu.choice 'Mindfulness Routine'
menu.choice 'Set_Alarm'
menu.choice 'Reflection'
menu.choice 'User Manual'
end 

Timers::Group.new
timers = Timers::Group.new
Timers::Group#after
Timers::Timer#cancel

if main_menu == "Energise Routine" 

start = timers.after(2) {puts energy_prompt.start}
timer = timers.after(4) {puts energy_stage_one.breathing} 
timer = timers.after(6) {puts energy_stage_two.stretch_a} 
timer = timers.after(8) {puts energy_stage_two.stretch_b} 
timer = timers.after(10) {puts energy_stage_two.stretch_c} 

timer = timers.after(12) {puts energy_stage_three.movement_a}
timer = timers.after(14) {puts energy_stage_three.movement_b} 
timer = timers.after(16) {puts energy_prompt.rest}
timer = timers.after(18) {puts energy_stage_three.movement_c} 
timer = timers.after(20) {puts energy_stage_three.movement_d} 
timer = timers.after(22) {puts energy_prompt.goal}
timers.resume 
11.times {timers.wait}   

main_menu = prompt.select("") do |menu|
menu.choice 'Set_Alarm'
menu.choice 'Reflection'
end

elsif main_menu == "Mindfulness Routine"
    
start_message = timers.after(2) {puts mind_prompts.start} 
timer = timers.after(4)  {puts mind_stage_one.breathing_a}
timer = timers.after(6) {puts mind_stage_one.breathing_b}
timer = timers.after(8) {puts mind_stage_one.breathing_c}
timer = timers.after(10) {puts mind_stage_one.breathing_d} 
timer = timers.after(12) {puts mind_stage_one.breathing_e} 
timer = timers.after(14) {puts mind_stage_one.breathing_f} 
timer = timers.after(16) {puts mind_stage_one.breathing_g} 
timer = timers.after(18) {puts mind_stage_one.breathing_h}

timer = timers.after(20) {puts mind_stage_one.breathing_i}
timer = timers.after(22) {puts mind_stage_two.body_a}
timer = timers.after(24) {puts mind_stage_two.body_b}
timer = timers.after(26) {puts mind_prompts.goal_a}
timer = timers.after(28) {puts mind_prompts.goal_b}
timer = timers.after(30) {puts mind_prompts.goal_c}
timers.resume 
15.times {timers.wait}

else
  puts ""  
end









