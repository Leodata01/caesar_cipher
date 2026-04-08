# frozen_string_literal: true

class CaesarCipher
  def initialize(message, key = 1)
    @key = key
    @message = message
    @encoded_message = ''
  end

  def encode
    # iterate through each chr of str.
    message.each_char do |char|
      # if letter use algo to return new value
      @encoded_message += if char.ord.between?(97, 122)
                            (char.ord - 97 + key % 26 + 97).chr
                          elsif char.ord.between?(65, 90)
                            ((char.ord - 65 + key) % 26 + 65).chr
                          else
                            char
                          end
      # else return chr
    end
  end
end

# caesar_cipher('What a string!', 5)
# "Bmfy f xywnsl!"
