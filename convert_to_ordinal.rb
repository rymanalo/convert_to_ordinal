def convert_to_ordinal(num)
  last_num = num.to_s.split("").last
  str_num = num.to_s
  
  case num
  when 11
    "11th"
  when 12
    "12th"
  when 13
    "13th"
  else
    case last_num
    when "1"
      str_num << "st"
    when "2"
      str_num << "nd"
    when "3"
      str_num << "rd"
    else
      str_num << "th"
    end
  end
end

puts convert_to_ordinal(1)
puts convert_to_ordinal(2)
puts convert_to_ordinal(11)