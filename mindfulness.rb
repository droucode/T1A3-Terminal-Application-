require 'colorize'
require 'timers'
require 'tty-prompt'
require 'pastel'

#------Mindfulness Class------#
class Mindfulness

    def initialize 
        @start = "Mindfullness is very usful activity in acepting and redicing stress and anxiety built up on your body, you can practice mindfulness as many times a day as you like. this exercise will run for 6 minutues. Clear your mind before you start your task.".colorize(:cyan)
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
#------Timers Method------#
    def timers
#Timers Gem 
Timers::Group.new
timers = Timers::Group.new
Timers::Group#after
Timers::Timer#cancel
#energy routine timer 
        timer = timers.after(1) {puts @start} 
        timer = timers.after(2)  {puts @breathing_a}
        timer = timers.after(3) {puts @breathing_b}
        timer = timers.after(4) {puts @breathing_c}
        timer = timers.after(5) {puts @breathing_d} 
        timer = timers.after(6) {puts @breathing_e} 
        timer = timers.after(7) {puts @breathing_f} 
        timer = timers.after(8) {puts @breathing_g} 
        timer = timers.after(9) {puts @breathing_h} 
        timer = timers.after(10) {puts @breathing_i}
        timer = timers.after(11) {puts @body_a}
        timer = timers.after(12) {puts @body_b}
        timer = timers.after(13) {puts @goal_a}
        timer = timers.after(14) {puts @goal_b}
        timer = timers.after(15) {puts @goal_c}
        timers.resume 
        15.times {timers.wait}
    end 
end