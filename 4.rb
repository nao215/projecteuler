def is_palindrome? num
  num = num.to_s
  num = num.to_s.slice(num.to_s.length / 2) unless num.to_s.length.even?
  left, right = num[0..(num.length / 2) - 1], num[(num.length / 2)..num.length]
  num if left == right.reverse && num.length > 1
end

answer = 0
left, right = [1000, 1000]
right.times do |i|
  left.times do |j|
    num = (left - i) * (right - j)
    answer = num if is_palindrome?(num) && answer < num
  end
end

p answer
