#-----------------------------------------------GEMS-----------------------------------------------#
require 'tty-font'
require 'colorize'
#-----------------------------------------METHOD FOR LOGO------------------------------------------#

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


#------------------------------------METHOD FOR CLEARING TERMINAL----------------------------------#
def auto_clear 
    print "\e[2J\e[f"
end 

#---------------------------------------METHOD FOR WHILE LOOPS---------------------------------------#

def welcome 
    puts "(*BELLOWS...slash, hisssss...!whoooo's that in my river!*)"
    print "Oh hey, I'm Al'. Sorry, thought you were someone else. Come on over, you'll be crunching through your loadload like an aligator in no time."
    puts  " Whats your name?"
end 

def bye_message 
    font = TTY::Font.new (:starwars)
    puts (font.write("catch-ya", letter_spacing:1))
end 

def txt_file_usermanual 
    file = File.open("usermanual.txt", 'r') 
    puts file.read
    file.close()
end 

# r - reading ''
# a - apendin '' to a file
# w - just writing 
# w+ - reading and writing 
# a+ - open a file for reading and apending 
# r+ = open a file for updating, reading and writing 

# def txt_file_reflection
#     file = File.open("reflection.txt", 'w+')
#         file.puts("abc")
#         file.close()
#     end 
# end 