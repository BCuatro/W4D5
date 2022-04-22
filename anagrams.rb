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
    




def fourth_anagrams(string1,string2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    string1.each_char {|char| hash1[char] += 1}
    string2.each_char {|char| hash2[char] += 1}
    
    hash1 == hash2
end

p fourth_anagrams("gizmo", "sally")    #=> false
p fourth_anagrams("elvis", "lives")    #=> true