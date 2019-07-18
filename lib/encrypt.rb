def encrypt(string)
  # Split the sentence into character array
  character_array = string.upcase.split("")

  letters = ('a'..'z').to_a
  alphabets = ('A'..'Z').to_a

  # Change each character to 3 letters in front
  # new_character_array = character_array.map do |character|
  #   while character.match(/[:alpha:]/)
  #     letters[letters.index(character) - 3]
  #   end
  # end

  new_character_array = character_array.map do |character|
    if character.match(/[!@#]/)
      'special'
    else
      if alphabets.include?(character)
        alphabets[alphabets.index(character) - 3]
      elsif character.to_i.class == Integer && character != ' '
        num_shift = character.to_i - 3
        num_shift.to_s
      else
        character
      end
    end
  end
  return new_character_array.join

  # If " ", do nothing
  # If punctuation, do nothing
  # If integer, do nothing
  # return character_array.join
end

p encrypt("!@#")
# p encrypt("the")
# p encrypt("the quick")
# p encrypt("THE quick")
# # => "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
