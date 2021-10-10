#-----------------------------------------------GEMS-----------------------------------------------#
require 'colorize'
require 'timers'
require 'tty-prompt'
#-----------------------------------------------ENERGY CLASS-----------------------------------------------#
class Energy

    #initialise variables containing routine steps and flow 
    notice = Pastel.new
    def initialize()
            @start = "Getting active and into your body, is great way to clear your mind and ignite your endorphines before you start a task. Complete these exercises within your capabilities and have fun. This program will run for roughly 6 minutes. Get ready to get your blood circulating and clear your mind ready to complete your task!".colorize(:cyan)
            @rest = "check your breath and rest for 10 seconds"
            @goal = "Now that you're done, take some a couple of minutes to think about what you would like to achieve, keep your goal achievable and work in small and prodictive blocks. Goodluck!- Al'".colorize(:cyan)
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
	# An individual timer set to fire a given proc at a given time. A timer is
	# always connected to a Timer::Group.You can manually enter this state by
	# calling #cancel
Timers::Group.new
timers = Timers::Group.new
Timers::Group#after
Timers::Timer#cancel
        #energy routine timer 
        1_second_timer = timers.after(1) {puts @start}
        30_second_timer = timers.after(30) {puts @stretch_a} 
        30_second_timer = timers.after(60) {puts @stretch_b} 
        30_second_timer = timers.after(90) {puts @stretch_c} 
        30_second_timer = timers.after(120) {puts @movement_a}
        30_second_timer = timers.after(150) {puts @movement_b} 
        10_second_timer = timers.after(180) {puts @rest}
        30_second_timer = timers.after(210) {puts @movement_c} 
        30_second_timer = timers.after(270) {puts @movement_d} 
        10_second_timer = timers.after(300) {puts @goal}
        timers.resume 
        11.times {timers.wait}
    end 
end 