def get_largest_prime_factor num
  num.times do |i|
    next if i < 2
    return get_largest_prime_factor(num / i) if num % i == 0 && is_prime?(i)
  end
end

def is_prime? num
  num.times do |i|
    return false if i > 1 && i > 1 && num != i && num % i == 0
  end
  true
end

p get_largest_prime_factor(600851475143)
