#^ 21. Fortune cookies

# fortune cookies comes with some 'wisdoms'
# hidden inside, and your task is to create a
# program that will offer the user a selection
# of cookies - chocolate chip, shortbread,
# peanut butter, whatever (the types are up to you),
# and if he decides to take one, you will
# show him some random wisdom. repeat the
# process until the user is done eating.
# when hes done, show him how much of each type
# of cookies he ate.

# minimal requirements:
# - the same wisdom never shows up twice in a row
# - at least one wisdom should be specific for
#   a specific type of cookie
# - your favourite wisdom is more likely
#   to show up than the others

# bonus points:
# - at least 2 different wisdoms will show up before
#   one can repeat
# - you have multiple favourite wisdoms with different
#   weights for each one

# extra bonus points:
# - the code is following the 'rules' explicitly mentioned
#   in self_study/ruby_style

# simplified example without types:
# program starts (ruby your_file.rb)
# program output: would you like a cookie? Y/N

wisdoms = {
  choko: ["you will have long life", "you will be successuful", "you will be rich"],
  almond: ["you will have long life", "you will be successuful", "you will be rich"],
  butter: ["you will have long life", "you will be successuful", "you will be rich", "butter specific"]
}

answer="Y"

# consider using a hash for counts => Hash.new(0)
choko_count = 0
almond_count = 0
butter_count = 0

last_result = nil
favourite = "you will be rich"

while answer == "Y"
  puts "would you like a cookie? Y/N"
  answer = gets.chomp.upcase

  if answer=="Y"
    puts "What type?"
    type = gets.chomp

    if type == "choko"
      choko_count = choko_count + 1
    elsif type == "butter"
      butter_count = butter_count + 1
    elsif type == "almond"
      almond_count = almond_count + 1
    else
      # code for making sure only available type is selected
    end

    result = wisdoms[type.to_sym].sample

    10.times do
      result = wisdoms[type.to_sym].sample until last_result != result
      break if result == favourite
    end

    last_result = result

    puts "your wisdom is: #{result}!"
  else
    puts "Bye"
    puts "you had #{choko_count} choko type, #{almond_count} almond type, #{butter_count} butter types."
  end
end

# user input: Y
# program output: some wisdom
# program output: would you like another? Y/N
# user input: Y
# program output: other wisdom
# program output: would you like another? Y/N
# user input: N
# program output: you had 2 cookies
# program ends

# notes:
# - this time the user wont be you, so make sure
#   there are clear instructions when youre expecting
#   some input. dont forget to explain how to close the program.
# - everything you need to successfully complete this task
#   is explained in the earlier lessons and in the self_study
#   folder. when you get stuck, its a good idea to revisit
#   them, or even to search online how to do some things.
#   even developers dont know everything and have to look
#   up things from time to time, and being able to find
#   the information you need is crucial part of your skillset.
#   that said, if you have no idea how to move forward,
#   or if something is not clear about the task, feel free
#   to reach out at any time.
