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
    attr_accessor :start, :rest, :goal, :stretch_a, :stretch_b, :stretch_c,
    :movement_a, :movement_b, :movement_c, :movement_d
end 
energy_routine = Energy.new()
energy_routine.start = "Getting active and into your body, is great way to clear your mind and ignite your endorphines 
before you start a task. Complete these exercises within your capabilities and have fun. This program will 
run for roughly 6 minutes. Get ready to get your blood circulating and clear your mind ready to complete your task!".colorize(:cyan)
energy_routine.rest = "check your breath and rest for 10 seconds"
energy_routine.stretch_a = "30 seconds, stretch each shoulder"
energy_routine.stretch_b = "30 seconds, stretch your neck side to side"
energy_routine.stretch_c = "30 seconds, touch your toes, or where youre comfortable to reach"
energy_routine.movement_a = "30 seconds, jog on the spot "
energy_routine.movement_b = "30 seconds, alernating arm punches (across your body)"
energy_routine.movement_c = "30 seconds, squats"
energy_routine.movement_d = "30 seconds, startjumps"
energy_routine.goal = "Now that you're done, take some a couple seconds to think about what you would like
to achieve, keep your goal achievable and work in small and prodictive blocks. Goodluck!".colorize(:cyan)


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
end 