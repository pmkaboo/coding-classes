print 'write a number: (1..9999)'
input = gets.chomp

base = {
  1 => 'i',
  5 => 'v',
  10 => 'x',
  50 => 'l',
  100 => 'c',
  500 => 'd',
  1000 => 'm'
}

puts "number of digits: #{input.size}"
roman = input.split('').each.with_index.with_object('') do |(x, i), out|
  puts "num: #{x}; index: #{i}"
  x = x.to_i
  xx = 10 ** (input.size - i - 1)

  case xx
  when 1000
    out << base[xx] * x
  else
    if x < 4
      out << base[xx] * x
    elsif x == 4
      out << base[xx] + base[xx * 5]
    elsif x < 9
      out << base[xx * 5] + (base[xx] * (x - 5))
    elsif x == 9
      out << base[xx] + base[xx * 10]
    end
  end
end

puts
puts roman.upcase
