#!/usr/bin/env ruby

array = ARGV.map { |e| e.to_i  }

for i in 0..array.size - 2
  for j in i+1..array.size - 1
    if (array[j - 1] > array[j])
      tmp = array[j]
      array[j] = array[j - 1]
      array[j - 1] = tmp
    end
  end
end

p array
