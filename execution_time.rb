# #Phase I

# def my_min(array)
#     array.sort.first
# end

# #phase IIß
# def my_min(array)
#     array.inject{|ele1, ele2|  ele1 < ele2 ? ele1 : ele2}

# end
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)




# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)

#Phase 1

# def largest_contiguous_subsum(array)
#     new_array =[]
#     sum =0
#     (0...array.length).each do |si|
#         (si...array.length).each do |ei|
#             new_array << array[si..ei]
#         end
    
#     end
#     new_array.sort_by! {|sub_arr| sub_arr.sum}
#     new_array.last.sum
# end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8

# list2 = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list2) # => 8 (from [7, -6, 7])

# list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])

#Phase II

def largest_contiguous_subsum(array)
    max_sum = array.first
    current_sum=array.first

    (1...array.length).each do |index|
        current_sum = 0 if current_sum < 0
        current_sum += array[index]
        max_sum = current_sum if current_sum > max_sum
    end

  max_sum


end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

list2 = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list2) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])
