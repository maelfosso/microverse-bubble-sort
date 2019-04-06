
def bubble_sort(array)
  for i in 0..array.size - 2
    for j in 0..array.size - 2
      if (array[j] <=> array[j + 1] > 0)
        tmp = array[j]
        array[j] = array[j + 1]
        array[j + 1] = tmp
      end
    end
  end

  return array
end

def bubble_sort_by(array)

  return bubble_sort(array) if !block_given?

  for i in 0..array.size - 2
    for j in 0..array.size - 2
      cmp = yield(array[j], array[j + 1])

      if (cmp > 0)
        tmp = array[j]
        array[j] = array[j + 1]
        array[j + 1] = tmp
      end
    end
  end

  return array
end
