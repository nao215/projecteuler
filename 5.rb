i = 20
flag = false
while true
  i += 1
  20.times do |num|
    break if i % (num + 1) != 0
    flag = true if num == 19
  end
  break if flag
end

p i
