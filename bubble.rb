def bubble_sort(values, passes=1)
  numbers = values
  changes = true
  while changes
    changes = false
    passes += 1
    (0..(numbers.size-passes)).each do |first|
      if numbers[first] > numbers[first+1]
        numbers[first], numbers[first+1] = numbers[first+1], numbers[first]
        changes = true
      end
    end
    if changes
      bubble_sort(numbers, passes)
    else
      puts numbers.inspect
    end
    break
  end

end

bubble_sort([43577, 10, 2, 4, 3, 2, 3, 1, 4, 4, 5, 7, 8, 14125, 36345, 124, 12, 34753, 7345, 124235, 3547])