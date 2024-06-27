# frozen_string_literal: true

ASCII_UPCASE_MIN = 65
ASCII_UPCASE_MAX = 90
ASCII_DOWNCASE_MIN = 97
ASCII_DOWNCASE_MAX = 122

def caesar_cipher(input_string, shift_val)
  char_array = input_string.split('')
  new_string = ''
  char_array.each do |char|
    ascii_val = char.ord
    shifted_ascii_val = shift_ascii_val(ascii_val, shift_val)
    shifted_ascii_char = shifted_ascii_val.chr
    new_string += shifted_ascii_char
  end
  new_string
end

def shift_ascii_val(ascii_val, shift_val)
  if ascii_val.between?(ASCII_UPCASE_MIN, ASCII_UPCASE_MAX)
    ascii_val -= 26 while ascii_val + shift_val > ASCII_UPCASE_MAX
    ascii_val += shift_val
  elsif ascii_val.between?(ASCII_DOWNCASE_MIN, ASCII_DOWNCASE_MAX)
    ascii_val -= 26 while ascii_val + shift_val > ASCII_DOWNCASE_MAX
    ascii_val += shift_val
  end
  ascii_val
end

puts caesar_cipher('My name is Nevin', 300)
