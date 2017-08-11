list = [4,5,6,7,1]
def bad_two_sum?(arr, target)
  pairs = arr.combination(2).to_a
  pairs.each{|el| return true if el.reduce(:+)== target}
  false
end


def ok_two_sum?(arr,target)
  arr_sort = arr.sort

  arr_sort.each_with_index do |el1,idx1|
    i = idx1 + 1
    while i < arr_sort.length
      return true if arr_sort[i] + el1 == target
      i += 1
    end
  end
  false
end

# p ok_two_sum?(list, 6)

def two_sum_hash(arr,target)
  hash = Hash.new
  arr.each do |el|
    hash[el] = el
  end
  arr.each do |el|
    return true if hash.has_value?(target - el)
  end
  false
end

def two_sum(arr,target)
  arr.each do |el|
    return true if arr.include?(target - el)
  end
  false
end

p two_sum_hash(list,6)
