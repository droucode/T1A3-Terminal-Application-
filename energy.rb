#-----------------------------------------------GEMS-----------------------------------------------#
require 'colorize'
require 'timers'
require 'tty-prompt'
require 'pastel'

#-----------------------------------------------ENERGY CLASS-----------------------------------------------#
class Energy

    #initialise variables containing routine steps and flow 
    def initialize()
            @start = "Getting active and into your body, is great way to clear your mind and ignite your endorphines before you start a task. Complete these exercises within your capabilities and have fun. This program will run for roughly 6 minutes. Get ready to get your blood circulating and clear your mind ready to complete your task!".colorize(:cyan)
            @rest = "check your breath and rest for 10 seconds"
            @goal = "Now that you're done, take some a couple seconds to think about what you would like to achieve, keep your goal achievable and work in small and prodictive blocks. Goodluck!".colorize(:cyan)
            @stretch_a = "30 seconds, stretch each shoulder"
            @stretch_b = "30 seconds, stretch your neck side to side"
            @stretch_c = "30 seconds, touch your toes, or where youre comfortable to reach"
            @movement_a = "30 seconds, jog on the spot"
            @movement_b = "30 seconds, alernating arm punches (across your body)"
            @movement_c = "30 seconds, squats"
            @movement_d = "30 seconds, startjumps" 
    end 
#-----------------------------------------------TIMERS METHOD-----------------------------------------------#
    def timers 
#Timers Gem 
Timers::Group.new
timers = Timers::Group.new
Timers::Group#after
Timers::Timer#cancel
        #energy routine timer 
        timer = timers.after(1) {puts @start}
        timer = timers.after(3) {puts @stretch_a} 
        timer = timers.after(4) {puts @stretch_b} 
        timer = timers.after(5) {puts @stretch_c} 
        timer = timers.after(6) {puts @movement_a}
        timer = timers.after(7) {puts @movement_b} 
        timer = timers.after(8) {puts @rest}
        timer = timers.after(9) {puts @movement_c} 
        timer = timers.after(10) {puts @movement_d} 
        timer = timers.after(11) {puts @goal}
        timers.resume 
        11.times {timers.wait}
    end 
end 