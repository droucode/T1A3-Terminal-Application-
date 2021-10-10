
require 'date'
require 'tty-prompt'

def alarm 
    
puts "Ready Steady Go"
puts "Hour"
hour = gets.chomp.to_i
puts "Minutes"
min = gets.chomp.to_i

i = 0
hour += 12

current_time = DateTime.now
setTime = DateTime.new(2021,10,8, hour, min)

current_time.strftime "%H:%M"
setTime.strftime "%H:%M"

	if min < 10
		puts "Alarm set for #{hour}:#{min}"
	else
		puts "Alarm set for #{hour}:#{min}"
	end

while i < 1

	current_time = DateTime.now
	current_time.strftime "%H:%M"

    if (current_time.strftime "%H:%M") == (setTime.strftime "%H:%M")
		#PLAY SOME SOUND
		pid = fork{ exec 'afplay', "AlarmSound.mp3" }
		puts "Al' here, how did you go? Have a break and lets do it all again. Otherwise, scroll down to Exit"
		i+=1
        end 
    end 
end 


