def bad_two_sum?(array,target)

    array.each_with_index do |el1, i1|
        array.each_with_index do |el2,i2|
            if i2 > i1
                return true if [el1,el2].sum == target
            end
        end
    end
    false
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false