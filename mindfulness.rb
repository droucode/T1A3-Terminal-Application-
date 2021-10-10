#-----------------------------------------------GEMS-----------------------------------------------#
require 'colorize'
require 'timers'
require 'tty-prompt'
require 'pastel'

#-----------------------------------------MINDFULNESS CLASS ----------------------------------------#
class Mindfulness

    def initialize 
        @start = "Mindfullness is very usful activity in acepting and redicing stress and anxiety built up on your body, you can practice mindfulness as many times a day as you like. This exercise will run for 6 minutues and will clear your mind before you start your task.".colorize(:cyan)
        @goal_a = "Start to visualise what you would like to achieve today.".colorize(:cyan)
        @goal_b = "Keep your goal realistic and achievable.".colorize(:cyan)
        @goal_c = "Think about how long you're going to set your alarm and remember small and steady steps, goodluck!".colorize(:cyan)
        @breathing_a = "Take 3 deep slow breaths and take 30 seconds to scan your body"
        @breathing_b = "Notice 3 things your can hear"
        @breathing_c = "Notice 3 things your can see"
        @breathing_d = "Bring your attention to your breath"
        @breathing_e = "Be aware of the movement of your body, how your chest rises and falls"
        @breathing_f = "Find a pattern in your breath and achor yourself to it"
        @breathing_g = "Notice any discomfort in your body, any tention in your shoulders?"
        @breathing_h = "Keep focus on your breath and continue to scan your body"
        @breathing_i = "Dont lose focus of your breath, thats your anchor"
        @body_a = "Slowly, start to roll your shoulders-5 times on each side"
        @body_b = "Lightly strech your neck from side to side"
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
        30_second_timer = timers.after(30)  {puts @breathing_a}
        30_second_timer = timers.after(60) {puts @breathing_b}
        30_second_timer = timers.after(90) {puts @breathing_c}
        30_second_timer = timers.after(120) {puts @breathing_d} 
        30_second_timer = timers.after(150) {puts @breathing_e} 
        30_second_timer = timers.after(180) {puts @breathing_f} 
        30_second_timer = timers.after(210) {puts @breathing_g} 
        30_second_timer = timers.after(240) {puts @breathing_h} 
        30_second_timer = timers.after(270) {puts @breathing_i}
        30_second_timer = timers.after(300) {puts @body_a}
        30_second_timer = timers.after(330) {puts @body_b}
        30_second_timer = timers.after(360) {puts @goal_a}
        30_second_timer = timers.after(390) {puts @goal_b}
        30_second_timer = timers.after(420) {puts @goal_c}
        timers.resume 
        15.times {timers.wait}
    end 
end