# Your task is to create an LCD string representation of an
# integer value using a 3x3 grid of space, underscore, and
# pipe characters for each digit. Each digit is shown below
# (using a dot instead of a space)

# ._.   ...   ._.   ._.   ...   ._.   ._.   ._.   ._.   ._.
# |.|   ..|   ._|   ._|   |_|   |_.   |_.   ..|   |_|   |_|
# |_|   ..|   |_.   ._|   ..|   ._|   |_|   ..|   |_|   ..|

# Example: 910

# ._. ... ._.
# |_| ..| |.|
# ..| ..| |_|

LCD = {
  0 => [
    ' _ ',
    '| |',
    '|_|'
  ],
  1 => [
    '   ',
    '  |',
    '  |'
  ],
  2 => [
    ' _ ',
    ' _|',
    '|_ '
  ],
  3 => [
    ' _ ',
    ' _|',
    ' _|'
  ],
  4 => [
    '   ',
    '|_|',
    '  |'
  ],
  5 => [
    ' _ ',
    '|_ ',
    ' _|'
  ],
  6 => [
    ' _ ',
    '|_ ',
    '|_|'
  ],
  7 => [
    ' _ ',
    '  |',
    '  |'
  ],
  8 => [
    ' _ ',
    '|_|',
    '|_|'
  ],
  9 => [
    ' _ ',
    '|_|',
    '  |'
  ]
}

def to_lcd(number)
  output = {
    row1: [],
    row2: [],
    row3: []
  }
  number.to_s.split('').each.with_index do |digit, idx|
    output[:row1] << LCD[digit.to_i][0]
    output[:row2] << LCD[digit.to_i][1]
    output[:row3] << LCD[digit.to_i][2]
  end

  output.each do |row, digits|
    puts digits.join
  end
end

to_lcd(123)
to_lcd(4)
to_lcd(56789)
to_lcd(80)