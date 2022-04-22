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
bad_two_sum?(arr, 6) # => should be true
bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(array, target)
    sorted = array.sort
    i = 0
    j = array.length-1
    until j<= i
        
        case sorted[i] + sorted[j]  <=> target
        when 0
            return true
        when -1
            i +=1
        when 1
            j-=1
        end
    end
    false

end
arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false


def two_sum?(array,target)
    hash = {}
    array.each{|k| hash[k] = target -k}
    hash.each {|k,v| return true if hash[target - k] == k && k != v  }
    false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false