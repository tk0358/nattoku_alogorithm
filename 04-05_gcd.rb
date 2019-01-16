def gcd(num_1, num_2)
  if num_1 % num_2 == 0
    return num_2
  else
    gcd(num_2, num_1 % num_2)
  end
end

p gcd(55, 45)
p gcd(1680, 640)
p gcd(24, 36)
