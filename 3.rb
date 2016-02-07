# 一番大きな素数の約数を取得する関数
def get_largest_prime_factor num
  num.times do |i|
    # 0で割り算はできない&1は素数だが計算しても意味ない
    next if i < 2
    # iが素数でかつiと引数が割り切れた場合,その値を再帰的に割っていく。
    # iが素数でかつiと引数で割り切れない場合,イテレーションが終了し,
    # num.times do |i|が戻り値として評価されるため
    # num つまり一番大きな素数の約数が返される 
    return get_largest_prime_factor(num / i) if num % i == 0 && is_prime?(i)
  end
end

# 素数かどうか判定
def is_prime? num
  num.times do |i|
    # 1と自分と同じ数以外で割り切れてしまった場合は素数ではない
    return false if i > 1 && i > 1 && num != i && num % i == 0
  end
  # 1と自分と同じ数以外で割り切れなかった場合は素数であるためtrueを返す
  true
end

p get_largest_prime_factor(600851475143)
