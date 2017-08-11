
str1 = "elviis"
str2 = "lives"

def first_anagram?(str1,str2)
  letters = str1.chars
  combinations = letters.permutation(str1.length).to_a.map{|el| el.join("")}
  combinations.include?(str2)
end

def second_anagram?(str1, str2)
  let1 = str1.chars
  let2 = str2.chars

  let1.each do |el|
    if let2.include?(el)
      str1.delete(el)
      str2.delete(el)
    end
  end
  str1 == str2

end

def third_anagram?(str1,str2)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1,str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.chars.each do |el|
    hash1[el] = str1.chars.count(el)
  end

  str2.chars.each do |el|
    hash2[el] = str2.chars.count(el)
  end

  hash1 == hash2
end

def fourth_anagram_bonus?(str1,str2)
  hash1 = Hash.new(0)
  str = str1 + str2
  str.chars.each do |el|
    hash1[el] = str2.chars.count(el)
  end

  odd = hash1.values.select{|el| el.odd?}
  odd.empty?
end

p fourth_anagram?(str1, str2)
