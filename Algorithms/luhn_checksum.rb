class Luhn

  def self.double_digit
    print "Enter the single digit 0-9: "
    digit = gets.chomp.to_i
    
    double_digit = digit * 2
    print "#{double_digit}, #{digit}"
    
    if double_digit >= 10
      sum = 1 + double_digit % 10
    else
      sum = double_digit
    end
    print "#{double_digit}, #{digit}, #{sum}"
    print "Sum of digit in doubled number is #{sum}"
  end

end
