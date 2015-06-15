#/usr/bin/ruby
=begin
for i in set
        for j in set
            if set[i] + set[j] == number
                puts "set i = #{set[i]}"
                puts "set j = #{set[j]}"
            end
        end
    end
=end
def sum(number,set)
    puts true if set.combination(2).any? {|a,b| a + b == number }
end

    set = (1..10**3).to_a.shuffle
    number = rand(10)
    
    puts "number = #{number}"
    puts "#{set}"
    
    
    sum(number,set)
