numbers_array = [4, 3, 78, 2, 0, 2]

def bubble_sort(numbers)

  loop do
    swapped = false # swapped = false, used to check if something was swapped

    numbers.each_with_index do |number, idx|
      break if idx == numbers.length - 1 # break when last element because last element cannot be compared to anything
 
      if numbers[idx] > numbers[idx+1]
        numbers[idx], numbers[idx+1] = numbers[idx+1], numbers[idx]
        swapped = true # swapped = true, because we swapped something
      end
    end


    break if  
      not swapped # condition - break loop if it did NOT SWAP anything - means that the array is sorted and no need to swap anything
    end
   
  p numbers
end

bubble_sort(numbers_array)