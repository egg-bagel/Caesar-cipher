def caesar_cipher(string, shift)
  string_array = string.split("")
  new_string_array = shift_array(string_array, shift)
  orig_caps(string_array, new_string_array)
  result = new_string_array.join("")
  puts result
  return result
end

#Takes an array of letters and shifts each letter the specified number of places
#Returns the new array of letters

def shift_array(str_array, shift)
  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", 
    "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  new_str_array = []

  str_array.each do |char|
    if (char == " " || char == "'" || char == "\"" || char == "." || char == "?" || char == "!" || char == "," ||
    char == "0" || char == "1" || char == "2" || char == "3" || char == "4" || char == "5" || char == "6" ||
    char == "7" || char == "8" || char == "9")
      new_str_array.push(char)
    else alphabet.each do |letter|
      if char.downcase == letter
        if (alphabet.index(letter) + shift) >= 26
          new_char = alphabet[(alphabet.index(letter) + shift) - 26]
          new_str_array.push(new_char)
        elsif (alphabet.index(letter) + shift) < 0
          new_char = alphabet[(alphabet.index(letter) + shift) + 26]
          new_str_array.push(new_char)
        else
          new_char = alphabet[alphabet.index(letter) + shift]
          new_str_array.push(new_char)
        end
      end
    end
    end
  end
  return new_str_array
end

#Applies original capitalization of string to the new string
def orig_caps(old_array, new_array)
  old_array.each_with_index do |char, ind|
    unless (char == " " || char == "'" || char == "\"" || char == "." || char == "?" || char == "!" || char == ",")
      if char == char.upcase
        new_array[ind] = new_array[ind].upcase
      end
    end
  end
end
