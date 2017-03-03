def oxford_comma(array)
  if array.count == 1
    return array[0]
  elsif array.count == 2
    return "#{array[0]} and #{array[1]}"
  else
    arr_w_commma = []
    array.each do |element|
      arr_w_commma.push(element.insert(-1, ","))
    end
    last_element = arr_w_commma.pop
    string = arr_w_commma.join(" ")
    string.insert(-1, " and #{last_element}")
    string[0..-2]
  end
end
