wisdoms = [
  { name: 'wisdom_1', chance: 0.05 },
  { name: 'wisdom_2', chance: 0.03 },
  { name: 'wisdom_3', chance: 0.02 },
  { name: 'wisdom_4', chance: 0.07 },
  { name: 'high probability wisdom', chance: 0.6 },
  { name: 'wisdom_6', chance: 0.05 },
  { name: 'wisdom_7', chance: 0.03 },
  { name: 'second highest wisdom', chance: 0.15 }
]
chance_adjusted_wisdoms = wisdoms.flat_map { |wisdom| [wisdom[:name]] * (wisdom[:chance] * 100).to_i }
cookies_and_wisdoms = {
  'cookie_1' => chance_adjusted_wisdoms,
  'cookie_2' => chance_adjusted_wisdoms,
  'cookie_3' => chance_adjusted_wisdoms,
  'cookie_4' => chance_adjusted_wisdoms,
  'cookie_5' => chance_adjusted_wisdoms,
  'cookie_6' => chance_adjusted_wisdoms,
  'cookie_7' => chance_adjusted_wisdoms,
  'cookie_8' => chance_adjusted_wisdoms,
  'cookie_9' => chance_adjusted_wisdoms,
  'cookie_10' => chance_adjusted_wisdoms
}
cookie_counts = cookies_and_wisdoms.keys.each_with_object({}) { |cookie, count| count[cookie] = 0 }
selected_wisdoms = []
loop do
  pp 'Pick (cookie_1, ... , cookie_10) or type exit to finish'
      user_choice = gets.chomp.downcase
  break if user_choice == 'exit'
  unless cookies_and_wisdoms.keys.include?(user_choice)
      pp 'you shall not pass!'
      next
  end
  random_wisdom = cookies_and_wisdoms[user_choice].sample
  random_wisdom = (cookies_and_wisdoms[user_choice] - selected_wisdoms).sample if selected_wisdoms.include?(random_wisdom)
  selected_wisdoms << random_wisdom
  selected_wisdoms.shift if selected_wisdoms.size > 2
  puts random_wisdom
  cookie_counts[user_choice] += 1
end
pp 'Statistics:'
cookie_counts.each do |cookie, count|
  puts "#{cookie}: #{count}\n"
end