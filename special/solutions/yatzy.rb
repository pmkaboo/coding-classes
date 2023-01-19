# The game of yatzy is a simple dice game. Each player rolls five six-sided dice.
# The player places the roll in a category, such as ones, twos, fives, pair, two pairs etc (see below).
# If the roll is compatible with the category, the player gets a score for the roll according to the rules.
# If the roll is not compatible with the category, the player scores zero for the roll.

# For example, if a player rolls 5,6,5,5,2 and scores the dice in the fives category they would score 15 (three fives).

# Your task is to score a GIVEN roll in a GIVEN category.
# You do NOT have to program the random dice rolling.
# You do NOT have to program re-rolls (as in the real game).
# You do NOT play by letting the computer choose the highest scoring category for a given roll.


# Yatzy Categories and Scoring Rules
# ==================================

# Chance:
  # The player scores the sum of all dice, no matter what they read.
  # For example,
  #    1,1,3,3,6 placed on "chance" scores 14 (1+1+3+3+6)
  #    4,5,5,6,1 placed on "chance" scores 21 (4+5+5+6+1)

# Yatzy:
  # If all dice have the same number, the player scores 50 points.
  # For example,
  #    1,1,1,1,1 placed on "yatzy" scores 50
  #    5,5,5,5,5 placed on "yatzy" scores 50
  #    1,1,1,2,1 placed on "yatzy" scores 0

# Ones, Twos, Threes, Fours, Fives, Sixes:
  # The player scores the sum of the dice that reads one, two, three, four, five or six, respectively.
  # For example,
  #    1,1,2,4,4 placed on "fours" scores 8 (4+4)
  #    2,3,2,5,1 placed on "twos" scores 4  (2+2)
  #    3,3,3,4,5 placed on "ones" scores 0

# Pair:
  # If exactly two dice have the same value then the player scores the sum of the two highest matching dice.
  # For example, when placed on "pair"
  #    3,3,3,4,4 scores 8 (4+4)
  #    1,1,6,2,6 scores 12 (6+6)
  #    3,3,3,4,1 scores 0
  #    3,3,3,3,1 scores 0

# Two pairs:
  # If exactly two dice have the same value and exactly two dice have a different value then the player scores the sum of these four dice.
  # For example, when placed on "two pairs"
  #    1,1,2,3,3 scores 8 (1+1+3+3)
  #    1,1,2,3,4 scores 0
  #    1,1,2,2,2 scores 0

# Three of a kind:
  # If there are exactly three dice with the same number then the player scores the sum of these dice.
  # For example, when placed on "three of a kind"
  #     3,3,3,4,5 scores 9 (3+3+3)
  #     3,3,4,5,6 scores 0
  #     3,3,3,3,1 scores 0

# Four of a kind:
  # If there are exactly four dice with the same number then the player scores the sum of these dice.
  # For example, when placed on "four of a kind"
  #     2,2,2,2,5 scores 8 (2+2+2+2)
  #     2,2,2,5,5 scores 0
  #     2,2,2,2,2 scores 0

# Small straight:
  # When placed on "small straight", if the dice read
  #   1,2,3,4,5, the player scores 15 (the sum of all the dice).

# Large straight:
  # When placed on "large straight", if the dice read
  #   2,3,4,5,6, the player scores 20 (the sum of all the dice).

# Full house:
  # If the dice are two of a kind and three of a different kind then the player scores the sum of all five dice.
  # For example, when placed on "full house"
  #     1,1,2,2,2 scores 8 (1+1+2+2+2)
  #     2,2,3,3,4 scores 0
  #     4,4,4,4,4 scores 0

categories = %w[
  chance
  yatzy
  ones
  twos
  threes
  fours
  fives
  sixes
  pair
  two_pairs
  three_kind
  four_kind
  small_straight
  large_straight
  full_house
]

puts "select a category #{categories}: "
category = gets.chomp

score = 0
dice = (1..5).map { rand(6) + 1 }
dice = [3,3,2,2,2]

puts "dice: #{dice}"
case category
when 'chance'
  score = dice.sum
when 'yatzy'
  score = 50 if dice.uniq.size == 1
when 'ones'
  score = dice.select { _1 == 1 }.sum
when 'twos'
  score = dice.select { _1 == 2 }.sum
when 'threes'
  score = dice.select { _1 == 3 }.sum
when 'fours'
  score = dice.select { _1 == 4 }.sum
when 'fives'
  score = dice.select { _1 == 5 }.sum
when 'sixes'
  score = dice.select { _1 == 6 }.sum
when 'pair'
  counter = Hash.new(0)
  dice.each { counter[_1] += 1 }
  score = counter.map { |key, value| key * 2 if value == 2 }.compact.max.to_i
when 'two_pairs'
  counter = Hash.new(0)
  dice.each { counter[_1] += 1 }

  if dice.uniq.size == 3
    score = counter.map { |key, value| key * 2 if value == 2 }.compact.sum
  end
when 'three_kind'
  counter = Hash.new(0)
  dice.each { counter[_1] += 1 }
  counter.each { |die, count| score = die * 3 if count == 3 }
when 'four_kind'
  counter = Hash.new(0)
  dice.each { counter[_1] += 1 }
  counter.each { |die, count| score = die * 4 if count == 4 }
when 'small_straight'
  score = 15 if dice.uniq.size == 5 && !dice.include?(6)
when 'large_straight'
  score = 20 if dice.uniq.size == 5 && !dice.include?(1)
when 'full_house'
  counter = Hash.new(0)
  dice.each { counter[_1] += 1 }
  score = dice.sum if counter.values.sort == [2, 3]
else
  puts 'wtf?'
end

puts "you scored: #{score}"