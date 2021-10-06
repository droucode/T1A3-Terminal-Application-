require 'date'
require 'colorize'
require 'timers'
require 'tty-prompt'
require 'pastel'

require_relative 'menu.rb' 

notice = Pastel.new.black.on_bright_yellow.detach
prompt = TTY::Prompt.new(active_color: notice)
main_menu = prompt.select("Before you set your alarm; Run either of the routines Energise and Mindfulness. They will encourage you 
to establish healthy and productive work habits") do |menu|
menu.choice 'Energise Routine'
menu.choice 'Mindfulness Routine'
menu.choice 'Set_Alarm'
menu.choice 'Reflection'
menu.choice 'User Manual'
end 

#get user input
puts "Your Alarm"
puts "24 or 12 hour time? (24)/(12)"
timeHour = gets.chomp.to_i
if timeHour == 12
	puts "(1) AM/ (2) PM"
	amPM = gets.chomp.to_i
end
puts "Hour"
hour = gets.chomp.to_i
puts "Minutes"
min = gets.chomp.to_i

i = 0

if timeHour == 12 && amPM == 2
	twelvehour = hour
	hour+=12
end

current_time = DateTime.now
setTime = DateTime.new(2017,4,26, hour, min)

current_time.strftime "%H:%M"
setTime.strftime "%H:%M"

if timeHour == 12
	if min < 10
		puts "Alarm set for #{twelvehour}:0#{min}"
	else
		puts "Alarm set for #{twelvehour}:#{min}"
	end
else
	if min < 10
		puts "Alarm set for #{hour}:0#{min}"
	else
		puts "Alarm set for #{hour}:#{min}"
	end
end

while i < 1

	current_time = DateTime.now
	current_time.strftime "%H:%M"

	if (current_time.strftime "%H:%M") == (setTime.strftime "%H:%M")
		#PLAY SOME SOUND
		pid = fork{ exec 'afplay', "AlarmSound.mp3" }
		puts "alarm"
		i+=1
	else	
		#DO NOTHING AND LOOP
	end
end