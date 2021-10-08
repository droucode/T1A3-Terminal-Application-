#----------Gems--------------#
require 'colorize'
require 'timers'
require 'tty-prompt'
#---------Required Files-----#
require_relative 'ascii.rb'
require_relative 'energy.rb'
require_relative 'mindfulness.rb'
#--------Calling Classes-----#
energy_routine = Energy.new
mindfulness_routine = Mindfulness.new 
#-------Main Menu---------#
#WHILE LOOP - user can cycle throug the menu options. Exit menu by selecting Exit 
while true 
    
    notice = Pastel.new.black.on_bright_yellow.detach
    prompt = TTY::Prompt.new(active_color: notice)
    main_menu = prompt.select("Welcome! Before you set your alarm; Run either of the routines Energise and Mindfulness. They will encourage you 
    to establish healthy and productive work habits") do |menu|
    menu.choice 'Energise Routine'
    menu.choice 'Mindfulness Routine'
    menu.choice 'Set_Alarm'
    menu.choice 'Reflection'
    menu.choice 'User Manual'
    menu.choice "Main Menu"
    menu.choice "Exit"
    end 
    
    case main_menu
    
    when "Energise Routine"
    #runs energise routine
    energy_routine.timers 

    when "Mindfulness Routine"
    #runs mindfulnes routine 
    mindfulness_routine.timers 

    end 
end 




# if main_menu == 'Energise Routine'
#     energy_routine.timers 

    
# elsif main_menu == 'Mindfulness Routine'
#     mindfulness_routine.timers 

# elsif main_menu == "Set Alarm"

# else 
#     puts ""
# end 