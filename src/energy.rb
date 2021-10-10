#-----------------------------------------------GEMS-----------------------------------------------#
require 'colorize'
require 'timers'
require 'tty-prompt'
#-----------------------------------------------ENERGY CLASS-----------------------------------------------#
class Energy

    #initialise variables containing routine steps and flow 
    notice = Pastel.new
    def initialize()
            @start = "Getting active and into your body, is great way to clear your mind and ignite your endorphines before you start a task. \nComplete these exercises within your capabilities and have fun. This program will run for roughly 6 minutes. \nGet ready to get your blood circulating and clear your mind ready to complete your task!".colorize(:cyan)
            @rest = "check your breath and rest for 10 seconds"
            @goal = "Now that you're done, take a couple of minutes to think about what you would like to achieve. Keep your goal achievable and work in small productive blocks. Goodluck!- Al'".colorize(:cyan)
            @stretch_a = "30 seconds, stretch each shoulder"
            @stretch_b = "30 seconds, stretch your neck side to side"
            @stretch_c = "30 seconds, touch your toes, or where youre comfortable to reach"
            @movement_a = "30 seconds, jog on the spot"
            @movement_b = "30 seconds, alternating arm punches (across your body)"
            @movement_c = "30 seconds, squats"
            @movement_d = "30 seconds, starjumps" 
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
one_second_timer = timers.after(1) {puts @start}
five_second_timer = timers.after(5) {puts @stretch_a} 
thirty_second_timer = timers.after(35) {puts @stretch_b} 
thirty_second_timer = timers.after(95) {puts @stretch_c} 
thirty_second_timer = timers.after(125) {puts @movement_a}
thirty_second_timer = timers.after(155) {puts @movement_b} 
thirty_second_timer = timers.after(185) {puts @rest}
thirty_second_timer = timers.after(215) {puts @movement_c} 
thirty_second_timer = timers.after(275) {puts @movement_d} 
timer = timers.after(305) {puts @goal}
        timers.resume 
        11.times {timers.wait}
    end 
end 