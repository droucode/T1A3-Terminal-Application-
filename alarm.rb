require 'date'

#get user input
puts "Alarm Clock"
puts "24 or 12 hour time? (24)/(12)"
timeHour = gets.chomp.to_i
if timeHour == 12
	puts "(1) AM/ (2) PM"
	amPM = gets.chomp.to_i
end
puts "What hour should you be alerted?"
hour = gets.chomp.to_i
puts "How many minutes shall you be alerted?"
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