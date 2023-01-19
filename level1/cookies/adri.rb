# frozen_string_literal: true

wisdom_list = {
  wisdom1: 'Whatever you do, always give 100%. Unless you’re donating blood.',
  wisdom2: 'Seize the moment. Remember all those women on the Titanic who waved off the dessert cart.',
  wisdom3: 'Bad decisions make good stories.',
  wisdom4: 'If you’re going through hell, keep going.',
  wisdom5: 'Never interrupt your enemy when he is making a mistake.',
  wisdom6: 'Laugh a lot. It burns a lot of calories.'
}
combinations = {
  all: %i[wisdom1 wisdom2 wisdom3],
  chocolate: [:wisdom4],
  gingerbread: %i[wisdom5 wisdom6]
}
wisdom_weights = { wisdom1: 1, wisdom2: 2, wisdom3: 10, wisdom4: 1, wisdom5: 5, wisdom6: 1 }

cookies = { chocolate: 0, vanilla: 0, gingerbread: 0, cinnamon: 0 }
history = []

def prompt_user(type, cookies)
  prompts = {
    start: 'Would you like some cookies?',
    continue: "\r\nWould you like more cookies?",
    invalid: "\r\nThis is not a valid answer."
  }
  puts "#{prompts[type]} Please select a flavour if yes or type NO if you'd like to finish."
  puts cookies.keys.join(' ')
end

def results(cookies)
  puts "\r\nYou ate the following cookies: "
  cookies.each { |t, c| puts "#{c} #{t}" }
  puts 'Thank you!'
end

def filter_wisdoms(answer, combinations, wisdom_weights, history)
  filtered_wisdoms = combinations[:all] + combinations[answer].to_a
  filtered_wisdoms.flat_map { |w| Array(w) * wisdom_weights[w] } - history
end

def select_and_store_wisdom(wisdoms, wisdom_list, history)
  history << wisdoms.sample
  history = history.drop(1) if history.size == 3
  puts wisdom_list[history.last]
end

prompt_user(:start, cookies)
loop do
  answer = gets.chomp.downcase.to_sym
  if answer == :no
    results(cookies)
    break
  elsif cookies[answer].nil?
    prompt_user(:invalid, cookies)
  else
    cookies[answer] += 1
    select_and_store_wisdom(filter_wisdoms(answer, combinations, wisdom_weights, history), wisdom_list, history)
    prompt_user(:continue, cookies)
  end
end
