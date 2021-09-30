
require 'colorize'
require 'timers'
require 'tty-prompt'

require_relative 'ascii.rb'
require_relative 'menu.rb'

Timers::Group.new
timers = Timers::Group.new
Timers::Group#after


def Energy_Exercise(action)
    direction = ""
    
    case action 
    when "breathe"
        direction = "take a breath"
    when "jog"
        direction = "jog on the spot"
    when "box" 
        direction = "box across your chest"
    else 
        direction = "finished"
    end 

    return direction 

end 

# puts Energy_Exercise("breathe") 

def Mindfulness_Exercise(action)
    direction = ""

    case action 
    when "deep"
        direction = "take 5 deep breaths"
    when "visualise"
        direction = "visualise what you would like to achieve"
    when "stretch"
        direction = "lighly roll your shoulders and feel your breath"
    else 
        direction = "finished"
    end 

    return direction 

end
# puts Mindfulness_Exercise("deep")

timers.after(8) {puts Mindfulness_Exercise("deep")}
timers.after(10) {puts Mindfulness_Exercise("visualise")}
timers.after(12) {puts Mindfulness_Exercise("stretch")}





timers.after(2) {puts Energy_Exercise("box")}
# timers.after(4) {puts Energy_Exercise("breathe")}
# timers.after(6) {puts Energy_Exercise("jog")}




Timers::Timer#cancel 
Timers::Group#wait
# Waits 5 seconds
timers.wait
# The script will now print "Strecth your shoulders"
Timers::Group#every 
loop { timers.wait } 


