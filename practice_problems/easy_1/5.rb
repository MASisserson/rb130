# Encrypted Pioneers

require 'pry'

def count(index)
  if index > 13
    return index - 13
  else
    return index + 13
  end
end

def decrypt(char)
  alphabet = ('a'..'z').to_a
  alphabet.each_with_index do |letter, index|
    if char.downcase == letter
      # binding.pry
      return alphabet[count(index + 1) - 1].upcase if char.upcase == char
      return alphabet[count(index + 1) - 1]
    end
  end
end

def decode_rot13(string)
  decoded = ''
  string.each_char do |char|
    if !(char =~ /[a-zA-Z]/)
      decoded << char
    else
      decoded << decrypt(char)
    end
  end

  decoded
end

p decode_rot13 "Nqn Ybirynpr"
p decode_rot13 "Tenpr Ubccre"
p decode_rot13 "Nqryr Tbyqfgvar"
p decode_rot13 "Nyna Ghevat"
p decode_rot13 "Puneyrf Onoontr"
p decode_rot13 "Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv"
# p decode_rot13 
# p decode_rot13 
# p decode_rot13 
# p decode_rot13 
# p decode_rot13 
# p decode_rot13 
# p decode_rot13 
