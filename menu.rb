
require 'colorize'
# require 'timers'
require 'tty-prompt'

require_relative 'ascii.rb'

prompt = TTY::Prompt.new
prompt.select("Are you ready?", %w(Individual_Timer Group_Timer))



