def find_multiples_sum num
  a = []
  1..num.times do |i|
    a << i if i % 3 == 0 || i % 5 == 0
  end
  p a
  a.inject(:+)
end

puts find_multiples_sum(1000)
