def bubble_sort(values, passes=1)
  numbers = values
  changes = true
  while changes
    changes = false
    passes += 1
    (0.upto(numbers.size-passes)).each do |first|
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


def bubble_sort_by(list)
  passes = list.size-2
  while passes > 0
    0.upto(passes) do |first|
      if yield(list[first], list[first+1]) < 0
        list[first], list[first+1] = list[first+1], list[first]
      end
    end
    passes -= 1
  end
  list.inspect
end




puts bubble_sort_by(["hi", "hello", "hey"]) {|left, right| left.length - right.length}
puts bubble_sort_by(["hi", "hello", "hey"]) {|right, left| left.length - right.length}