#-----------------------------------------------GEMS-----------------------------------------------#
require 'date'
require 'tty-prompt'

#----------------------------------Method Conatining Alarm Clock-------------------------------------#
def alarm 
    
#greeting 	
puts "Ready Steady Go"

#user input/converting to an integer 
puts "Start you clock: Input Hour and press enter"
hour = gets.chomp.to_i
puts "Input minutes and press enter"
min = gets.chomp.to_i
#setting the index to 0 
i = 0
hour += 12

current_time = DateTime.now
setTime = DateTime.new(2021,10,8, hour, min)

current_time.strftime "%H:%M"
setTime.strftime "%H:%M"

	if min < 13
		puts "Crunch-Time set for #{hour}:0#{min}"
	else
		puts "Crunch-Time set for #{hour}:#{min}"
	end
#loop for the the alarm sound function. Loop will end after 1 rotation of the code
while i < 1
	#gem
	current_time = DateTime.now
	current_time.strftime "%H:%M"
	#setting paramiters 
    if (current_time.strftime "%H:%M") == (setTime.strftime "%H:%M")
		#execution for the mp3 audio. 
		pid = fork{ exec 'afplay', "sound.mp3"}
		puts "Al' here, how did you go? Have a break and lets do it all again. Otherwise, scroll down to Exit"
		i+=1
        end 
    end 
end 


