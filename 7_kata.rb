#Shortest Word
def find_short(s)
  s.split.min_by(&:length).length
end

#Complementary DNA
def DNA_strand(dna)
  dna.tr('ATCG', 'TAGC')
end

#Make a function that does arithmetic!
def arithmetic(a, b, operator)
  case operator
    when "add" then
      return a + b
    when "subtract" then
      return a - b
    when "multiply" then
      return a * b
    when "divide" then
      return a / b
  end
end

#Odd or Even?
def odd_or_even(array)
  array.sum.even? ? "even" : "odd"
end

#Sum of a sequence
def sequence_sum(begin_number, end_number, step)
  (begin_number..end_number).step(step).sum
end

#Get the Middle Character
def get_middle(s)
  s.length % 2 == 0 ?   s[s.length / 2 - 1, 2] :  s[s.length / 2]
end

#Sum of the first nth term of Series
def series_sum(n)
  sum = 0.0
  n.times do |i|
    sum += 1.0 / (1 + 3 * i)
  end
  sprintf("%.2f", sum)
end

#Disemvowel Trolls
def disemvowel(str)
  str.gsub(/[aeiouAEIOU]/, '')
end

#Beginner Series #3 Sum of Numbers
def get_sum(a,b)
  if a == b
   return a
 elsif a < b
   return (a..b).sum
 else
   return (b..a).sum
 end
end

#Reverse words
def reverse_words(str)
  words = str.split(/(\s+)/)  #
  reversed_words = words.map do |w|
    w.reverse
  end
  return reversed_words.join('') 
end

#Dinner Plans
def common_ground(s1, s2)
  words_s1 = s1.split
  words_s2 = s2.split
  common_words = []

  words_s2.each do |word2|
    if words_s1.include?(word2) && !common_words.include?(word2)
      common_words << word2
    end
  end

  return common_words.join(' ') unless common_words.empty?
  return 'death'
end

#Mumbling
def accum(s)
  result = ''
  s.each_char.with_index do |char, index|
    result += char.upcase + char.downcase * index + '-'
  end
  result.chomp('-')  # убрать последний дефис
end