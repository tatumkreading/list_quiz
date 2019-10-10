# #three_even?

# def three_even?(arr)
#     arr.each do |x| # I put this here for it to go through each number in the list but I needed to fully write it out 
#         if nums % 2 == 0 # Then I tried to have each divide by two to equal to 0 so it would return even but I needed to specifially ask each number
#             return true 
#         else
#             return false
#     end
# end 


# puts three_even?([2, 1, 3, 5])
# puts three_even?([2, 5, 12, 5])

#three_even?

def three_even?(list)
    (list.size - 2).times do |i| #this allowed me to go through the list each number
        if list[i] % 2 == 0 && list[i+1] % 2 == 0 && list[i+2] % 2 == 0 #than list allowed me to divide each number by 2 and if it was = to 0 than it was even otherwise it was odd
            return true #this told my function that if I had my evens next to each other
        end 
    end 
    return false
    
end 

puts three_even?([2, 1, 3, 5]) #true
puts three_even?([2, 4, 12, 5]) #false
puts three_even?([2, 2, 3, 6]) # false
puts three_even?([1, 4, 6, 4]) # true
puts three_even?([]) # false

#bigger_two - I ran out of time for this one but I was going to find the total of list one and than compare it to list two

# def bigger_two(x,y)
#     x>y ? a : b 

# end

# bigger_two([1,2], [3,4])
# bigger_two([1, 7], [4,4])

def bigger_two(list, list2)
    if list[0] + list[1] >= list2[0] + list2[1]  #this was my list equation which i also compared to list 2
        return (list)
    end 
    return (list2)
    if list[0] + list[1] == list2[0] + list2[1] #this was my list 2 that helped me determine the larger list
        return list
    end 
end 

print bigger_two([1,2], [3,4]) 
print bigger_two([1, 7], [4,4])

#series_up - I never had time to finish this one

def series_up(nums)
  series = 0 
  list = []
  nums.times do |line| #this was the start to my loop 
    n = 0
    nums.times do |nums| #is the equation to print the numbers as it grows in teh sequence size
        list[n + series] = n + 1 
        n += 1
    end 
    series += line + 1 #this was the growth of the sequence
end 
return list
end 


puts series_up(1)  # >> [1]
puts series_up(2)  # >> [1, 1, 2]
puts series_up(3)  # >> [1, 1, 2, 1, 2, 3]
puts series_up(4)  # >> [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]