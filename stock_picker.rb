def stock_picker(days)
  hash = gen_day_hash(days)
  puts hash[hash.keys.max]
end 

def gen_day_hash(days)
  res = Hash.new([])
  i = 0
  j = i + 1
  while i < days.length - 1
    while j < days.length
      res[days[j] - days[i]] = [i, j]
      j += 1
    end
    i += 1
    j = i + 1
  end
  res
end


stock_picker([17,3,6,9,15,8,6,1,10])