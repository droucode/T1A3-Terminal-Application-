#-----------------------------------------------GEMS-----------------------------------------------#
require 'colorize'
require 'timers'
require 'tty-prompt'
require 'date'
require 'tty-font'
#----------------------------------------REQUIRED FILES---------------------------------------------#

# require_relative 'ascii.rb'
require_relative 'energy.rb'
require_relative 'mindfulness.rb'
require_relative 'methods.rb'
require_relative 'alarm.rb'


#-----------------------------------------CALLING CLASSES-------------------------------------------#
energy_routine = Energy.new
mindfulness_routine = Mindfulness.new 

#--------------------------WELCOME PAGE AND COMMAND LINE STATEMENTS---------------------------------#
logo
welcome
name_attempt = 0 
while name_attempt < 2
    name = gets.strip.capitalize 
    if name !=""
        auto_clear
        puts "(*bellows)Righto #{name} pick one of these routines and you'll be on your way. See you soon!"
    break
    else
        name_attempt +=1
        if name == ""
            print "Grrrromp, I didn't catch your name:"
        end  
            if name_attempt ==2 
            auto_clear 
            puts "i'll call you Al Jr. then, hows that? Pick one of these routines and you'll be on your way. See you soon"
            name = "Al Jr."
        end 
    end 
end 
#----------------------------------------------MAIN APPLICATION------------------------------------------#


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
    
#CASE CONTAINING TIMERS AND MENU OPTIONS 
    case main_menu
    when "Energise Routine"
    #runs energise routine
    energy_routine.timers 

    when "Mindfulness Routine"
    #runs mindfulnes routine 
    mindfulness_routine.timers 
 
    when "Reflection"
    #runs relflecton .txt file
        # txt_file_reflection
    when "User Manual"
    #runs user manual .txt file 
        txt_file_usermanual

    when "Set_Alarm"
    #runs alarm
        alarm 
#USER EXITS/QUITS THE APPLICATION 
    when "Exit"
    main_menu
    #method containing tty-font 
    bye_message
    puts "#{name}, come by the lake anytime, i'm always willing to crunch through anything"
        break 
    end 
end 