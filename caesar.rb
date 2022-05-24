# frozen_string_literal: true

def caesar_cipher(plaintext, shift_factor)
  cipher_text = ''
  plaintext.each_byte do |byte|
    cipher_text += shift_char(byte, shift_factor)
  end
  cipher_text
end

def shift_char(byte, shift_factor)
  return (65 + (byte - 65 + shift_factor) % 26).chr if byte.between?(65, 90) # A-Z
  return (97 + (byte - 97 + shift_factor) % 26).chr if byte.between?(97, 122) # a-z

  byte.chr
end

puts('Please enter a string to encode: ')
text = gets.chomp
puts('Please enter a shift value: ')
shift = gets.chomp.to_i
puts caesar_cipher(text, shift)
