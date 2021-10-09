#----------Gems--------------#
require 'colorize'
require 'timers'
require 'tty-prompt'
require 'date'
#---------Required Files-----#
# require_relative 'ascii.rb'
require_relative 'energy.rb'
require_relative 'mindfulness.rb'
require_relative 'methods.rb'
# require_relative 'test_alarm.rb'
#--------Calling Classes-----#
energy_routine = Energy.new
mindfulness_routine = Mindfulness.new 
# clock = Test.new

#------Welcome message and directions-------#

logo
welcome
name_attempt = 0 
while name_attempt < 2
    name = gets.strip.capitalize 
    if name !=""
        print "\e[2J\e[f"
        puts "(*bellows)Righto #{name} pick one of these routines and you'll be on your way. See you soon!"
        break 
    else 
        name_attempt +=1
        if name == ""
            puts "Grrrromp, I didn't catch your name:"
        end 
        if name_attempt ==2 
            auto_clear 
            print "i'll call you Al Jr. then, hows that? Pick one of these routines and you'll be on your way. See you soon"
            name = "Al jr"
        end 
    end 
end 

#-------Main Menu---------#
# WHILE LOOP - user can cycle throug the menu options. Exit menu by selecting Exit 

while true 
    notice = Pastel.new.black.on_bright_yellow.detach
    prompt = TTY::Prompt.new(active_color: notice)
    main_menu = prompt.select("") do |menu|
    menu.choice 'Energise Routine'
    menu.choice 'Mindfulness Routine'
    menu.choice 'Set_Alarm'
    menu.choice 'Reflection'
    menu.choice 'User Manual'
    menu.choice "Exit"
    end 
    
    case main_menu
    when "Energise Routine"
    #runs energise routine
    energy_routine.timers 

    when "Mindfulness Routine"
    #runs mindfulnes routine 
    mindfulness_routine.timers 
 
    when "Exit"
    main_menu
    puts "So long #{name}, come by the lake anytime, i'm always willing to crunch through anything with you."
        break 
    end 
end 