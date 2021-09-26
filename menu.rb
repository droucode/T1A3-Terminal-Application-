
# require 'colorize'
# require 'timers'
require 'tty-prompt'

require_relative 'ascii.rb'

# class Set_Alarm 
#     attr_accessor :hour :minutes :reminder :alarm 
#     def initialize (hour, minutes, reminder, alarm)
#         @hour = hour
#         @minutes = minutes
#         @reminder = reminder

#         @alarm = alarm 
#     end
# alarm = Alarm.new(12, 33, "ten to go", "12:33 session over!")

greeting = "Are you ready?"
prompt = TTY::Prompt.new
prompt.select(greeting, %w(Pre_Work_Mood Set_Alarm ))





