def prime?(number)
  if number <= 1
    return false
  elsif number <= 3
    return true
  elsif number.even? || number % 3 == 0
    return false
  end

  i = 5
  while i * i <= number
    if number % i == 0 || number % (i + 2) == 0
      return false
    end
    i += 6
  end
  return true
end

puts prime?(97)
