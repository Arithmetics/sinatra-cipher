def cipher(str, shift)
  arr = str.split('')
  shift.times do
    arr.map! do |x|
      if x == "z"
        x = "a"
      else
        x = x.next
      end
    end
  end
  puts arr.join('')
end
