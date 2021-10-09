#------Logo------#

def logo 
crunchtime = "

                ─────▄████▀█▄
                ───▄█████████████████▄
                ─▄█████.▼.▼.▼.▼.▼.▼▼▼▼
               ▄███████▄.▲.▲▲▲▲▲▲▲▲
              ████████████████████▀▀
     
    █▀▀ █▀█ █░█ █▄░█ █▀▀ █░█ ▄▄ ▀█▀ █ █▀▄▀█ █▀▀
    █▄▄ █▀▄ █▄█ █░▀█ █▄▄ █▀█ ░░ ░█░ █ █░▀░█ ██▄ 
    "
puts crunchtime.light_yellow  
end 

#------clearing terminal between functions------#

def auto_clear 
    print "\e[2J\e[f"
end 

#-------Headings-------#

def welcome 
    puts "(*bellows...*)Oh HEY, WHATS YOU NAME? My name's Al, soon you'll be crunching through your loadload just like we ol aligators do!".colorize(:cyan)
end 

