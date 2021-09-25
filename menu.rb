
require 'colorize'
# require 'timers'
require 'tty-prompt'

require_relative 'ascii.rb'

greeting = "Are you ready?"
prompt = TTY::Prompt.new
prompt.select(greeting, %w(Individual_Timer Group_Timer))



