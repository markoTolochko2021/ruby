name = ARGV[0]

if name == nil
  name = 'Guest'
end

puts "Hello, #{name}!"

questions = ["First question1","First question2","First question3",
             "First question4","First question5","First question6",
             "First question7","First question8","First question9",
             "First question10","First question11","First question12",
             "First question13","First question14","First question15"]

results = ["resulr1", "result2", "result3"]

yes_answers = 0

for item in questions do
  puts item

  user_input = nil

  while (user_input != "yes" and  user_input != "no")
    puts "enter yes or no"
    user_input = STDIN.gets.chomp.downcase
  end
  if (user_input == "yes"
  yes_answers += 1)
  end
end

puts "\n #{name}"
puts "\n result is #{yes_answers}"

if (yes_answers >= 10)
  puts results[0]
  elsif (yes_answers >5)
  puts results[1]
else
  puts results[2]
end