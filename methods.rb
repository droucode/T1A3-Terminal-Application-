require 'tty-font'
require 'colorize'
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
    puts "(*bellows...*)Oh HEY, WHATS YOU NAME? My name's Al, soon you'll be crunching through your loadload just like we ol aligators do!"
end 

def bye_message 
    font = TTY::Font.new (:starwars)
    puts (font.write("catch-ya", letter_spacing:1))
end 

def test 
    puts "test fitness"
end 

def txt_file_reflection
    file = File.open("relfection.txt", 'w+')
        file.puts("")
        file.close()
end 

def txt_file_usermanual 
    file = File.open("usermanual.txt", 'r') 
    puts file.read
    file.close()
end 

# r - reading 
# a - apending to a file
# w - just writing 
# w+ - reading and writing 
# a+ - open a file for reading and apending 
# r+ = open a file for updating, reading and writing 