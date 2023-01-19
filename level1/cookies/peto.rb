# frozen_string_literal: true

# fortune cookies come with some 'wisdoms'
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
# - your favourite wisdom is 10x more likely
#   to show up than the others

# bonus points:
# - at least 2 different wisdoms will show up before
#   one can repeat
# - you have multiple favourite wisdoms with different
#   weights for each one

# extra bonus points:
# - the code is following the 'rules' explicitly mentioned
#   in self_study/ruby_style

WISDOMS = {
  w1: 'w1',
  w2: 'w2',
  w3: 'w3',
  w4: 'w4',
  w5: 'w5',
  w6: 'w6'
}.freeze

COOKIES = {
  a: [ [:w1] * 10, [:w2] * 5,  [:w3],      [:w4],      [:w5]                 ].flatten,
  b: [ [:w1],      [:w2] * 10, [:w3] * 5,  [:w4],      [:w5]                 ].flatten,
  c: [ [:w1],      [:w2],      [:w3] * 10, [:w4] * 5,  [:w5]                 ].flatten,
  d: [ [:w1],      [:w2],      [:w3],      [:w4] * 10, [:w5] * 5             ].flatten,
  e: [ [:w1] * 5,  [:w2],      [:w3],      [:w4] * 10, [:w5] * 10            ].flatten,
  s: [ [:w1],      [:w2],      [:w3],      [:w4],      [:w5],     [:w6] * 20 ].flatten
}.freeze

HISTORY_SIZE = 3

def print_input_prompt
  puts
  puts "available cookies: #{COOKIES.keys}"
  print 'please select one: '
end

def valid_input?(input)
  COOKIES.keys.include?(input)
end

def select_wisdom(input, history)
  (COOKIES[input] - history).sample
end

def record_history(wisdom, history)
  history << wisdom
  history.shift if history.size >= HISTORY_SIZE
end

def record_stats(input, wisdom, stats)
  stats[:cookies][input] += 1
  stats[:wisdoms][wisdom] += 1
end

puts "welcome to the cookie factory, have some cookies, and when you want to leave just type 'exit'"

stats = { cookies: Hash.new(0), wisdoms: Hash.new(0) }
history = []

loop do
  print_input_prompt
  input = gets.chomp.to_sym

  break if input == :exit

  unless valid_input?(input)
    puts "cookie '#{input}' is not available"
    next
  end

  wisdom = select_wisdom(input, history)
  record_history(wisdom, history)
  record_stats(input, wisdom, stats)

  puts WISDOMS[wisdom]
end

puts 'thanks for the visit and goodbye'
puts "your stats: #{stats}"
