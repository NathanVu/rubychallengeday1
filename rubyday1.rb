#Basic Arithmetic Challenge
# puts 5+5
# puts 3*5.0
# puts 10-2
# puts 10.3-7.9
# puts 20/10
# puts 20/5.0
# puts 20%3
# puts 20%4
# puts 20/0
# puts 20.0/0

# Variables Challenge

# Here are a few exercises for you to practice using variables:
#
# Set a variable called my_favorite_number equal to your favorite number.
# Calculate what your favorite number divided by 2 is.
# Set another variable called somones_favorite equal to 13
# Change the value of someones_favorite to 7
# Subtract your favorite number from someones
# Change the value of my favorite number to be 26 times its current value
#
# my_favorite_number = 7.5
# puts my_favorite_number / 2
# someones_favorite = 13
# someones_favorite = 7
# puts someones_favorite - my_favorite_number
# puts my_favorite_number * 26

# Strings Challenge
#
# For this exercise, try out some of the Ruby string methods for yourself.
#
# .upcase
# .reverse
# .include?
# capitalize
# create a variable and put it into a string using string interpolation

# puts "hello".upcase
# puts "hello".reverse
# puts "hello".include? "hellz"
# puts "hello".capitalize
# greeting = "hello"
#
# puts "This is a greeting: #{greeting}"

# Arrays Challenge
#
# Read the introductory information about the pretty comprehensive set of Array features Ruby has.
#
# Create an array with ten of your favorite movies
# From that array, extract your top 3 movies in a new array (Hint: .select)
# Find an expression that tells you how many elements are in the array
# Reverse an array, try out slices, how to rotate them, and how to get a random element from the array

# movies_array = ["Zoolander", "Diehard", "Anchorman", "Batman vs. Superman", "Avengers: Infinity War", "Wolverine X", "Logan", "It Comes in the Night", "The Witch", "The Avengers"]

# puts movies_array
# puts movies_array.select { |elementValue| elementValue=="Logan" || elementValue == "Diehard" || elementValue == "The Avengers" }
# puts movies_array.length
# puts movies_array.reverse
# puts movies_array.slice(0)
# puts movies_array.slice(2,2)
# puts movies_array.slice(2..5)
# puts movies_array.rotate(2)
# puts movies_array.sample(5)

# Write a loop that prints from 1 to 20. Try it with all the loops covered in this lesson. Do it again counting down from 20 to 1.
# count = 1
# 20.times do
#   puts count
#   count+=1
# end
#
# count = 20
# 20.times do
#   puts count
#   count-=1
# end

# count = 1
# while count<=20
#   puts "This is the while, count = #{count}"
#   count+=1
# end
#
# count = 20
# until count< 1
#   puts "This is the until loop, count = #{count}"
#   count-=1
# end

# for count in 1..20
#   puts "This is the for loop, count= #{count}"
# end

# Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
# puts "Enter a number:"
# userInput = gets.chomp.to_i
# if userInput >= 1 && userInput <=10
#   puts "Valid"
# elsif userInput <=1 || userInput >=10
#   puts "Invalid"
# end

# Write a program that prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz
#
# for count in 1..100
#   puts count
#   if count%3 ==0 && count%5 == 0
#     puts 'FizzBuzz'
#   elsif count%3==0
#     puts "Fizz"
#   elsif count%5 == 0
#     puts "Buzz"
#   end
# end


# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
#
# def sum_these_numbers(x,y)
#   puts x+y
# end
# sum_these_numbers(5,10)

# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
# def even(x)
#   if x%2==0
#     puts "This is even"
#   else
#     puts "This is odd"
#   end
# end
# even(4)
# even(7)


# Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.

# array_words = ["cup","coffee","pen","computer","paper"]
#
# array_words.each {|element|
#   puts element.upcase}



# Write a method which calls another method, then uses its return value

# def method_1
#   # Call method2
#   # Use method2's return value in an operation
#   puts method_2
# end
#
# def method_2
#   puts "Enter a letter/statement:"
#   gets.chomp
# end
# method_1


# Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.



# def valid_date
#   puts "enter the date:"
#   date =  gets.chomp.to_i
#   puts "enter the month:"
#   month =  gets.chomp.to_i
#   puts "enter the year between 1752 and 9999:"
#   year = gets.chomp.to_i
#
#   if month_check(month) && year_check(year) && date_check(date,month,year)
#     puts "The date is valid"
#   else
#     puts "The date is invalid"
#   end
# end
#
# def year_check(year)
#   if year >= 1752 && year <= 9999
#     return true
#   else
#     return false
#   end
#
# end
#
# def month_check(month)
#   if month>=1 && month<=12
#     return true
#   else
#     return false
#   end
# end
#
# def date_check(date,month,year)
#   months_31 = [1,3,5,7,8,10,12]
#   months_30 = [4,6,9,11]
#   if year%4 !=0
#     puts "It is a common year"
#     months_31.each{|element|
#       if element==month
#         puts "The month has 31 days"
#         if date>=1 && date <=31
#           return true
#         else
#           return false
#         end
#       end
#     }
#     months_30.each{|element|
#       if element==month
#         puts "The month has 30 days"
#         if date>=1 && date <=30
#           return true
#         else
#           return false
#         end
#       end
#     }
#     if month == 2
#       if date>=1 && date <=28
#         return true
#       else
#         return false
#       end
#     end
#
#   elsif year%100 != 0
#     puts "It's a leap year"
#     months_31.each{|element|
#       if element==month
#         puts "The month has 31 days"
#         if date>=1 && date <=31
#           return true
#         else
#           return false
#         end
#       end
#     }
#     months_30.each{|element|
#       if element==month
#         puts "The month has 30 days"
#         if date>=1 && date <=30
#           return true
#         else
#           return false
#         end
#       end
#     }
#     if month == 2
#       if date>=1 && date <=29
#         return true
#       else
#         return false
#       end
#     end
#   elsif year%400 != 0
#     puts "It is a common year"
#     months_31.each{|element|
#       if element==month
#         puts "The month has 31 days"
#         if date>=1 && date <=31
#           return true
#         else
#           return false
#         end
#       end
#     }
#     months_30.each{|element|
#       if element==month
#         puts "The month has 30 days"
#         if date>=1 && date <=30
#           return true
#         else
#           return false
#         end
#       end
#     }
#     if month == 2
#       if date>=1 && date <=28
#         return true
#       else
#         return false
#       end
#     end
#
#   else
#     puts "It is a leap year"
#     months_31.each{|element|
#       if element==month
#         puts "The month has 31 days"
#         if date>=1 && date <=31
#           return true
#         else
#           return false
#         end
#       end
#     }
#     months_30.each{|element|
#       if element==month
#         puts "The month has 30 days"
#         if date>=1 && date <=30
#           return true
#         else
#           return false
#         end
#       end
#     }
#     if month == 2
#       if date>=1 && date <=29
#         return true
#       else
#         return false
#       end
#     end
#   end
# end
#
# valid_date

# Using if, elsif, and else blocks, write a function called rps_game which allows two users to input their moves in "Rock, Paper, Scissors" and which determines the winner (or if a tie occurred).


# This function is going to return who won as a string. Display users move

def rps_game
  #prompt users for their moves
  puts "Player 1: Enter Paper, Rock, Scissors"
  input_1 = gets.chomp.capitalize
  if input_1 == "Rock"
    rock = 0
    scissors = -1
    paper = 1
    puts "Player 2: Enter Paper, Rock, Scissors"
    input_2 = gets.chomp.capitalize
    if input_1_hash > input2_hash
      puts "Player 2 Loses"
    end
  elsif input_1 == "Scissors"
    scissors = 0
    rock = 1
    paper =-1
  else
    paper = 0
    rock = -1
    scissors = 1
  end



  if #input 1 is "rock" and input 2 is "scissors"
    # then puts some kind of "Player One Wins!" message

elsif #input 1 is "paper" and input 2 is "scissors"
  # puts some kind of "Player Two Wins!" message
  end
end


end
