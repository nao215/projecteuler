def fibonacci num
  ary = [1, 2]
  i = 1
  while  num > ary.last
    ary << ary[i] + ary[i - 1]
    i += 1
  end
  ary
end

sum = 0
fibonacci(4000000).each do |num|
  sum += num if num % 2 == 0
end

p sum
