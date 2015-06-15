restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# write the each loop here. 
restaurant_menu.each do |item, price|
  puts "#{item}: #{price+(price*0.10)}"
end
