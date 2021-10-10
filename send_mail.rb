
require "pony"
require 'io/console'

my_mail = "t.marko.tolochko@gmail.com"

puts "Enter email #{my_mail} password to sent the letter"
password = STDIN.noecho(&:gets).chomp

puts "sent to whom?"
send_to = STDIN.gets.chomp

puts "Write some text in letter"
body = STDIN.gets.chomp

Pony.mail({

  :subject => "Hello!!",
  :body => body,
  :to => send_to,
  :from => my_mail,

  :via => :smtp,
  :via_options => {

    :address => 'smtp.gmail.com',
    :port => '465 ',
    :tls => true,
    :user_name => my_mail,
    :password => password,
    :authentication => :plain

  }
          }
)

puts "Done! "