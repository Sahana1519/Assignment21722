class SetOperations 
    $arr1 = [0, 2, 4, 6, 8]
    $arr2 = [1, 2, 3, 4, 5]
    #union operation
    def union_operation
        puts "Union Operation Results"
        result = $arr1 | $arr2
        puts "#{result}"
    end
    #intersection operation
    def intersection_operation
        puts "Intersection Operation Results"
        result = $arr1 & $arr2
        puts "#{result}"
    end
    #difference operation
    def difference_operation
        puts "Difference Operation Results"
        result = $arr1 - $arr2
        puts "#{result}"
    end
    #cartesian operation
    def cartesian_operation
        puts "Cartesian Operation Results"
        result = $arr1.product(['a','b'])
        puts "#{result}"
    end
    #commutative operation
    def commutative_operation
        puts "Commutative Operation Results"
        result = "a"*4
        puts "#{result}"
    end
end

obj = SetOperations.new

puts "Array 1"
puts "#{$arr1}"
puts "Array 2"
puts "#{$arr2}"
obj.union_operation
obj.intersection_operation
obj.difference_operation
obj.cartesian_operation
obj.commutative_operation




