
require 'colorize'
crunchtime = "

                ─────▄████▀█▄
                ───▄█████████████████▄
                ─▄█████.▼.▼.▼.▼.▼.▼▼▼▼
               ▄███████▄.▲.▲▲▲▲▲▲▲▲
              ████████████████████▀▀
     
    █▀▀ █▀█ █░█ █▄░█ █▀▀ █░█ ▄▄ ▀█▀ █ █▀▄▀█ █▀▀
    █▄▄ █▀▄ █▄█ █░▀█ █▄▄ █▀█ ░░ ░█░ █ █░▀░█ ██▄ "

puts crunchtime.light_yellow


# pass the number of seconds as the parameter
seconds = eval(ARGV[0]).to_i
start_time = Time.now

loop do
  elapsed = Time.now - start_time
  print "\e[D" * 17
  print "\033[K"

  if elapsed > seconds
    puts "Time's up!"
    exit
  end

  print Time.at(seconds - elapsed).utc.strftime('%H:%M:%S.%3N')
  sleep(0.05)
end
 
