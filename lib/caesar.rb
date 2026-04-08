# frozen_string_literal: true

def caesar_cipher(string, key)
  new_str = ''
  # iterate through each chr of str.
  string.each_char do |char|
    # if letter use algo to return new value
    new_str += if char.ord.between?(97, 122)
                 (char.ord - 97 + key % 26 + 97).chr
               elsif char.ord.between?(65, 90)
                 ((char.ord - 65 + key) % 26 + 65).chr
               else
                 char
               end
    # else return chr
  end
  puts new_str
end

caesar_cipher('What a string!', 5)
# "Bmfy f xywnsl!"
