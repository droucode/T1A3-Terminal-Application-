#-----------------------------------------------GEMS-----------------------------------------------#
require 'colorize'
require 'timers'
require 'tty-prompt'
require 'date'
require 'tty-font'
#----------------------------------------REQUIRED FILES---------------------------------------------#
# require_relative 'ascii.rb'
require_relative 'src/energy.rb'
require_relative 'src/mindfulness.rb'
require_relative 'src/methods.rb'
require_relative 'src/alarm.rb'
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
        puts "Righto #{name}, pick one of these routines and you'll be on your way. I'll see you down the south side of the river!"
    break
    else
        name_attempt +=1
        if name == ""
            print "Grrrromp, I didn't catch your name:"
        end  
            if name_attempt ==2 
            auto_clear 
            puts "I'll call you Al Jr. then, how's that? Pick one of these routines and you'll be on your way. See you soon"
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
    prompt.say ("Al' here, would you like to start #{name}? Y/N") 
    input = gets.strip.capitalize
    if (input == "Y")
    #runs energy routine
    energy_routine.timers 
    #user can exit or reselect a differnt menu choice 
    else (input == "N")
        puts "You've landed back at the start, when you're ready- select your menu choice".colorize:cyan
    main_menu
    end 
        
    when "Mindfulness Routine"
    #user input to begin the routine
    prompt.say ("Al' here, would you like to start #{name}? Y/N") 
    input = gets.strip.capitalize
    if (input == "Y")
    #runs mindfulnes routine 
    mindfulness_routine.timers 
    #user can exit or reselect a differnt menu choice 
    else (input == "N")
        puts "You've landed back at the start, when you're ready - select your menu choice".colorize:cyan
    main_menu
    end 
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
    puts "Outta here already #{name}, Well.. come by the rive anytime, I'm always willing to crunch through anything (*BELLOWS*)"
        break 
    end 
end 