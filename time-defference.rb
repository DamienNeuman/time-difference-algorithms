#my_min phase 1
arr = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
def my_min(arr)
  arr.each_with_index do |el1,idx1|
    min =  true
    arr.each_with_index do |el2,idx2|
      min = false if el2 < el1 && idx1 != idx2
    end
    return el1 if min == true
  end
end

#my_min Phase 2

def my_min2(arr)
  min = arr.first
  arr.each do |el|
    min = el if el < min
  end
  min

end

# puts my_min2(arr)

#phase 1 coniguous some
list = [-5, -1, -3]
def largest_contiguous_subsum(arr)
  sub_array = []

  (0..(arr.length - 2)).each do |idx1|
    (idx1..(arr.length - 1)).each do |idx2|
      sub_array << arr[idx1..idx2]
    end
  end
  result = sub_array.map do |el|
    el.reduce(:+)
  end
  result.max
end
#p largest_contiguous_subsum(list)

def largest_contiguous_subsum2(arr)
   max_ending_here = arr.first
   max_so_far = arr.first

  arr.each_with_index do |el,idx|
    next if idx == 0
    if (el > (max_ending_here + el))
      max_ending_here = el
    else
      max_ending_here = max_ending_here + el
    end

    if (max_so_far > max_ending_here)
      max_so_far = max_ending_here
    else
      max_so_far = max_ending_here
    end
  end
  max_so_far
end
puts largest_contiguous_subsum2(list)
