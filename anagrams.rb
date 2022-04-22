def first_anagrams(string1, string2)
    string1.permutation.to_a
end

def second_anagrams(string1,string2)
    array = string2.split("")
    string1.each_char do |char|
        if !array.rindex(char).nil? 
            array.delete_at(array.rindex(char))
        end
    end
    array.empty?
end

def third_anagrams(string1,string2)
    string1.split("").sort == string2.split("").sort
end
    


p third_anagrams("gizmo", "sally")    #=> false
p third_anagrams("elvis", "lives")    #=> true