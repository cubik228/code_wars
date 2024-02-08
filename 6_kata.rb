#Highest Scoring Word
def high(x)
  words = x.split
  max_score = 0
  max_word = ""

  words.each do |w|
    score = w.chars.map { |c| c.ord - 96 }.sum
    
    if score > max_score
      max_score = score
      max_word = w
    end
  end
  max_word
end

#Counting Duplicates
def duplicate_count(text)
  arr = text.downcase.split("")
 arr.uniq.count { |n| arr.count(n) > 1 }
end

#Find the odd int
def find_it(arr)
  counts = arr.tally
    odd_occurrence = counts.find { |num, count| count.odd? }
    odd_occurrence[0]
  end

#Take a Number And Sum Its Digits Raised To The Consecutive Powers And ....¡Eureka!!
def sum_dig_pow(a, b)
  result = []
  (a..b).each do |num|
    digits = num.digits.reverse
    sum = digits.each_with_index.sum { |digit, index| digit**(index + 1) }
    result << num if sum == num
  end
  result
end

#Unique In Order
def unique_in_order(iterable)
  iterable = iterable.chars if iterable.is_a?(String)
  iterable.each_with_object([]) { |item, unique_items| unique_items << item if unique_items.empty? || unique_items.last != item }
end

#Detect Pangram
def pangram?(string)
  string.downcase.scan(/[a-z]/).uniq.size == 26
 end
 
#Mexican Wave
def wave(str)
  result = []
str.chars.each_with_index do |char, index|
  if char =~ /[a-z]/
    wave_word = str.dup
    wave_word[index] = char.upcase
    result << wave_word
  end
end
result
end

#Are they the "same"?
def comp(a, b); a.nil? || b.nil? ? false : a.sort.map { |x| x ** 2 } == b.sort; end

#Count the smiley faces!
def count_smileys(arr)
  count = 0
 arr.each do |face|
   if face.match(/[:;][-~]?[)D]/)
     count += 1
   end
 end
 count
end

#The Supermarket Queue
def queue_time(customers, n)
  tills = Array.new(n, 0) 

 customers.each do |customer|
   min_till_index = tills.index(tills.min) 
   tills[min_till_index] += customer 
 end

 tills.max
end