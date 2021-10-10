#-----------------------------------------------GEMS-----------------------------------------------#
require 'colorize'
require 'timers'
require 'tty-prompt'
require 'pastel'

#-----------------------------------------MINDFULNESS CLASS ----------------------------------------#
class Mindfulness

    def initialize 
        @start = "Mindfulness is a very useful activity in accepting and reducing stress and anxiety built up in your body. \nYou can practice mindfulness as many times a day as you like. \nThis exercise will run for roughly 6 minutues and will clear your mind before you start your task.".colorize(:cyan)
        @goal_a = "Start to visualise what you would like to achieve today.".colorize(:cyan)
        @goal_b = "Keep your goal realistic and achievable.".colorize(:cyan)
        @goal_c = "Think about how long you're going to set your alarm ofor and remember small and steady steps. Goodluck!".colorize(:cyan)
        @breathing_a = "Take 3 deep slow breaths and take 30 seconds to scan your body"
        @breathing_b = "Notice 3 things you can hear"
        @breathing_c = "Notice 3 things you can see"
        @breathing_d = "Bring your attention to your breath"
        @breathing_e = "Be aware of the movement of your body, how your chest rises and falls"
        @breathing_f = "Find a pattern in your breath and achor yourself to it"
        @breathing_g = "Notice any discomfort in your body, (any tension in your shoulders?)"
        @breathing_h = "Keep focus on your breath and continue to scan your body"
        @breathing_i = "Do not lose focus of your breath, it is your anchor"
        @body_a = "Slowly, start to roll your shoulders. x5 on each side"
        @body_b = "Lightly stretch your neck from side to side"
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
        five_second_timer = timers.after(5)  {puts @breathing_a}
        thirty_second_timer = timers.after(35) {puts @breathing_b}
        thirty_second_timer = timers.after(95) {puts @breathing_c}
        thirty_second_timer = timers.after(125) {puts @breathing_d} 
        thirty_second_timer = timers.after(155) {puts @breathing_e} 
        thirty_second_timer = timers.after(185) {puts @breathing_f} 
        thirty_second_timer = timers.after(215) {puts @breathing_g} 
        thirty_second_timer = timers.after(245) {puts @breathing_h} 
        thirty_second_timer = timers.after(275) {puts @breathing_i}
        thirty_second_timer = timers.after(305) {puts @body_a}
        thirty_second_timer = timers.after(335) {puts @body_b}
        thirty_second_timer = timers.after(365) {puts @goal_a}
        thirty_second_timer = timers.after(395) {puts @goal_b}
        timer = timers.after(425) {puts @goal_c}
        timers.resume 
        15.times {timers.wait}
    end 
end