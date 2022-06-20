def merge(arr1, arr2)
  result = []
  while !arr1.empty? && !arr2.empty?
    if arr1[0] < arr2[0]
      result.push(arr1.shift)
    else
      result.push(arr2.shift)
    end
  end
  result.concat(arr1).concat(arr2)
end

def merge_sort(arr)
  if arr.length <= 1
    return arr
  else
    middle = arr.length / 2
    left = merge_sort(arr.slice(0...middle))
    right = merge_sort(arr.slice(middle...arr.length))
    merge(left, right)
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [1, 2]"
  puts "=>", merge_sort([2, 1])

  puts

  puts "Expecting: [1, 2, 3]"
  puts "=>", merge_sort([1, 2, 3])

  puts

  puts "Expecting: [-10, 0, 2, 2, 5, 10, 20]"
  puts "=>", merge_sort([10, -10, 0, 2, 20, 5, 2])

end

# Please add your pseudocode to this file
# And a written explanation of your solution
