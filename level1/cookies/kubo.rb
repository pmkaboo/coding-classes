# array of wisdoms
wisdoms = [
  {
    wisdom_text: "Don't go to store, when it's closed",
    weight: 10,
    type: 'c'
  },
  {
    wisdom_text: "Take umbrella when it's raining",
    weight: 1,
    type: 'p'
  },
  {
    wisdom_text: 'Help someone with his problem, and he will remember you when he will have another problem',
    weight: 1,
    type: 'g'
  },
  {
    wisdom_text: 'An apple a day, keeps anyone away if you throw it hard enough',
    weight: 1,
    type: 'all'
  },
  {
    wisdom_text: 'Life is short. Drive fast and leave a sexy corpse',
    weight: 5,
    type: 'all'
  }
]

# this will have last wisdom saved
was_last = {}
# all the types of cookies can be defined here
cookies = {
  c: {
    name: 'Chocolate',
    count: 0
  },
  p: {
    name: 'Peanut Butter',
    count: 0
  },
  g: {
    name: 'Gingerbread',
    count: 0
  }
}

# display all the cookies we defined
puts 'We have these types of cookies:'
cookies.each do |cookie|
  print "#{cookie[1][:name]} cookie (#{cookie[0].to_s.upcase}), "
end
puts "\nIf you want a cookie, please enter a character reperesenting the type (the one in the brackets)"
puts "If you don't want a cookie, please enter the word 'end'"
print 'your choice: '

# select wisdom based on cookie type and what was last
def wisdom_picker(wisdoms, cookie_type, was_last)
  # create weighted array -> more weight of the wisdom, more time in the array
  wisdoms_weighted = []
  wisdoms.each do |w|
    w[:weight].times { wisdoms_weighted << w if (w[:type] == cookie_type || w[:type] == 'all') && w != was_last }
  end
  # return selected wisdom hash
  wisdoms_weighted.sample.to_h
end

# 1 cookie or more cookies?
def one?(count)
  return 'cookie' if count == 1

  'cookies'
end

loop do
  selected_type = gets.chomp.downcase
  if selected_type == 'end'
    cookies.each do |cookie|
      puts "You ate #{cookie[1][:count]} #{cookie[1][:name]} #{one?(cookie[1][:count])}"
    end
    break
  # check if the type is present in defined cookies
  elsif cookies.keys.include?(selected_type.to_sym)
    wisdom = wisdom_picker(wisdoms, selected_type, was_last)
    was_last = wisdom
    cookies[selected_type.to_sym][:count] += 1
    puts "Here is a wisdom from your cookie: #{wisdom[:wisdom_text]}\n\n"
    puts "Do you want another cookie? please enter the type or 'end' if you don't want another cookie\n\n"
  else
    puts "wrong input, please enter correct symbol or type 'end' for ending\n\n"
  end
  print 'your choice: '
end
