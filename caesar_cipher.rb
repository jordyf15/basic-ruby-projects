def caesar_cipher(string, shift_factor)
  string_ascii = string.bytes
  shifted_string_ascii = string_ascii.map do |letter| 
    if letter >= 65 && letter <= 90
      shift_upcase_letter(letter, shift_factor)
    elsif letter >= 97 && letter <= 122
      shift_downcase_letter(letter, shift_factor)
    else
      letter 
    end
  end
  shifted_string_ascii.pack('c*')
end

def shift_downcase_letter(letter, shift_factor)
  if letter+shift_factor>122
    letter+shift_factor-122+96
  else
    letter+shift_factor
  end
end

def shift_upcase_letter(letter, shift_factor)
    if letter+shift_factor>90
        letter+shift_factor-90+64
    else
        letter+shift_factor
    end
end

caesar_cipher("What a string!", 5)