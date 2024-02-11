#Find Maximum and Minimum Values of a List
def min(list)
  list.min
  end
  
def max(list)
  list.max
end

#Grasshopper - Check for factor
def check_for_factor(base, factor)
  base % factor == 0
end

#What is between?
def between(a, b)
  (a..b).to_a
end

#Sum of positive
def positive_sum(arr)
  (arr.select { |num| num > 0 }).sum
end

#Grasshopper - Summation
def summation(num)
  (0..num).sum
 end


#Sum Mixed Array
def sum_mix(x)
x.map(&:to_i).sum
end

#Reverse List Order
def reverse_list list
  list.reverse
end

#Powers of 2
def powers_of_two(n)
  (0..n).map { |i| 2**i }
end

#Area or Perimeter
def area_or_perimeter(length, width)
  length == width ? length * length : 2 * (length + width)
end

#Filter out the geese
def goose_filter (birds)
  geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]
   birds.reject {|bird| geese.include?(bird)}
end

#Beginner - Lost Without a Map
def maps(x)
  x.map{|i| i*2}
end

#Reversed sequence
def reverse_seq(n)
  result = []
  n.downto(1) { |i| result << i }
  result
end

#Grasshopper - Personalized Message
def greet(name, owner) 
  if owner == name
    return "Hello boss"
  else
    return "Hello guest" 
  end
end

#MakeUpperCase
def make_upper_case(str)
  str.upcase
end

#String repeat
def repeat_str (n, s)
  s*n
end

#Volume of a Cuboid
def get_volume_of_cuboid(length, width, height)
  length*width*height
end

#Beginner Series #2 Clock
def past(h, m, s)
  hours_in_ms = h * 60 * 60 * 1000
 minutes_in_ms = m * 60 * 1000
 seconds_in_ms = s * 1000

 total_ms = hours_in_ms + minutes_in_ms + seconds_in_ms
end

#Returning Strings
def greet(name)
  "Hello, #{name} how are you doing today?"
end

#Switch it Up!
def switch_it_up(number)
  case number
  when 0
    "Zero"
  when 1
    "One"
  when 2
    "Two"
  when 3
    "Three"
  when 4
    "Four"
  when 5
    "Five"
  when 6
    "Six"
  when 7
    "Seven"
  when 8
    "Eight"
  when 9
    "Nine"
  else
    "Invalid number"
  end
end

#Beginner - Reduce but Grow
def grow(x) 
  f =1
  x.each do  |i| 
    f *= i 
  end
  f
end

#Find the smallest integer in the array
def find_smallest_int(arr)
  arr.min
end

#Convert a Boolean to a String
def boolean_to_string(b)
  return b.to_s
end

#Count by X
def count_by(x, n)
  (1..n).map { |i| x * i }
end

#Remove First and Last Character
def remove_char(s)
  s[1..-2]
end

#Simple multiplication
def simple_multiplication(number)
  number % 2==0 ? number *8 : number*9
end

#Return Negative
def make_negative(num)
  return -num if num > 0
num
end

#Even or Odd
def even_or_odd(number)
  number.even? ? "Even" : "Odd"
end

#Convert a string to an array
def string_to_array(string)
  string.split(" ")
end

#Remove exclamation marks
def remove_exclamation_marks(str)
  str.gsub('!', '')
end

#DNA to RNA Conversion
def dna_to_rna(dna)
  rna = ""
  dna.each_char do |s|
    if s == "T"
      rna += "U"
    else
      rna += s
    end
  end
  rna
end

#Reversed Strings
def solution(str)
  str.reverse
end


#Are You Playing Banjo?
def are_you_playing_banjo(name)
  name[0] == 'R' || name[0] == 'r' ? "#{name} plays banjo" : "#{name} does not play banjo"
end
