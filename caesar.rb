def caesar_cipher(plaintext, shift_factor)
  cipher_text = ''
  plaintext.each_byte do |byte|
    cipher_text += shift_char(byte, shift_factor)
  end
  return cipher_text
end

def shift_char(byte, shift_factor)
  if byte.between?(65, 90) # A-Z
    return (65 + (byte - 65 + shift_factor) % 26).chr
  end
  if byte.between?(97, 122) # a-z
    return (97 + (byte - 97 + shift_factor) % 26).chr
  end

  return byte.chr
end

puts('Please enter a string to encode: ')
text = gets.chomp
puts('Please enter a shift value: ')
shift = gets.chomp.to_i
puts caesar_cipher(text, shift)