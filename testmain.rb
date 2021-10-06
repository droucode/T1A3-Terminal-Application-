require 'colorize'
require 'timers'
require 'tty-prompt'
require 'pastel'

require_relative 'menu.rb' 

Timers::Group.new
timers = Timers::Group.new
Timers::Group#after
Timers::Timer#cancel

class Energy
    attr_accessor :start, :rest, :goal, :breathing, :stretch_a, :stretch_b, :stretch_c,
    :movement_a, :movement_b, :movement_c, :movement_d
end 
energy_routine = Energy.new()
energy_routine.start = "Getting active and into your body is great way to clear your mind and ignite your endorphines, 
before you start a task. Complete these exercises within your capabilities and have fun. This program will 
run for roughly 6 minutes. Get ready to get your blood circulating and clear your mind ready to complete your task!"
energy_routine.rest = "check your breath and rest for 10 seconds"
energy_routine.stretch_a = "30 seconds, stretch each shoulder"
energy_routine.stretch_b = "30 seconds, stretch your neck side to side"
energy_routine.stretch_c = "30 seconds, touch your toes, or where youre comfortable to reach"
energy_routine.movement_a = "30 seconds, jog on the spot "
energy_routine.movement_b = "30 seconds, alernating arm punches (across your body)"
energy_routine.movement_c = "30 seconds, squats"
energy_routine.movement_d = "30 seconds, startjumps"
energy_routine.goal = "Now that you're done, take some a couple seconds to think about what you would like
to achieve, keep your goal achievable and work in small and prodictive blocks. Goodluck!"
energy_routine.breathing = "Take 5 deep breaths" 

class Mindfulness
    attr_accessor :start, :goal_a, :goal_b, :goal_c, :breathing_a, :breathing_b, :breathing_c, :breathing_d, 
    :breathing_e, :breathing_f, :breathing_g, :breathing_h, :breathing_i, :breathing_j, :body_a, :body_b
end 
mind_routine = Mindfulness.new()
mind_routine.start = "Mindfullness is very usful activity in acepting and redicing 
stress and anxiety built up on your body, you can practice mindfulness as many times a day as you like. 
this exercise will run for 6 minutues. Clear your minf before you start your task"
mind_routine.goal_a = "Start to visualise what you would like to achieve today"
mind_routine.goal_b = "Keep your goal realistic and achievable"
mind_routine.goal_c = "think about how long you're going to set your alarm and remember small and steady steps, goodluck!"
mind_routine.breathing_a = "Take 3 deep slow breaths and take 30 seconds to scan your body"
mind_routine.breathing_b = "Notice 3 things your can hear"
mind_routine.breathing_c = "Notice 3 things your can see"
mind_routine.breathing_d = "Bring your attention to your breath"
mind_routine.breathing_e = "Be aware of the movement of your body, how your chest rises and falls"
mind_routine.breathing_f = "Find a pattern in your breath and achor yourself to it"
mind_routine.breathing_g = "Notice any discomfort in your body, any tention in your shoulders?"
mind_routine.breathing_h = "Keep focus on your breath and continue to scan your body"
mind_routine.breathing_i = "Dont lose focus of your breath, thats your anchor"
mind_routine.body_a = "Slowly, start to roll your shoulders-5 times on each side"
mind_routine.body_b = "Lightly strech your neck from side to side"

notice = Pastel.new.black.on_bright_yellow.detach
prompt = TTY::Prompt.new(active_color: notice)

main_menu = prompt.select("Before you set your alarm; Run either of the routines Energise and Mindfulness. They will encourage you 
to establish healthy and productive work habits") do |menu|
menu.choice 'Energise Routine'
menu.choice 'Mindfulness Routine'
menu.choice 'Set_Alarm'
menu.choice 'Reflection'
menu.choice 'User Manual'
end 

if main_menu == 'Energise Routine'

timer = timers.after(1) {puts energy_routine.start}
timer = timers.after(2) {puts energy_routine.breathing} 
timer = timers.after(3) {puts energy_routine.stretch_a} 
timer = timers.after(4) {puts energy_routine.stretch_b} 
timer = timers.after(5) {puts energy_routine.stretch_c} 

timer = timers.after(6) {puts energy_routine.movement_a}
timer = timers.after(7) {puts energy_routine.movement_b} 
timer = timers.after(8) {puts energy_routine.rest}
timer = timers.after(9) {puts energy_routine.movement_c} 
timer = timers.after(10) {puts energy_routine.movement_d} 
timer = timers.after(11) {puts energy_routine.goal}
timers.resume 
11.times {timers.wait}   

elsif main_menu == 'Mindfulness Routine'
    
start_message = timers.after(1) {puts mind_routine.start} 
timer = timers.after(2)  {puts mind_routine.breathing_a}
timer = timers.after(3) {puts mind_routine.breathing_b}
timer = timers.after(4) {puts mind_routine.breathing_c}
timer = timers.after(5) {puts mind_routine.breathing_d} 
timer = timers.after(6) {puts mind_routine.breathing_e} 
timer = timers.after(7) {puts mind_routine.breathing_f} 
timer = timers.after(8) {puts mind_routine.breathing_g} 
timer = timers.after(9) {puts mind_routine.breathing_h}

timer = timers.after(10) {puts mind_routine.breathing_i}
timer = timers.after(11) {puts mind_routine.body_a}
timer = timers.after(12) {puts mind_routine.body_b}
timer = timers.after(13) {puts mind_routine.goal_a}
timer = timers.after(14) {puts mind_routine.goal_b}
timer = timers.after(15) {puts mind_routine.goal_c}
timers.resume 
15.times {timers.wait}

else 
    puts ""
end 


