# decode single character
def decode_char(cha)
  morse_char = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_char[cha]
end

# words => letter 
def decode_words(word)
  translated_word = ''

  split_word.each { |char| result += decode_char(char) }

  result
end

# split pattern message into word
def split_message(message)
  splited_message = message.split('   ')
  decode_message = ''

  words_arr.each_with_index do |words, i|
    if i == 0
      decode_msg << "#{decode_words(words)}"
    else 
      decode_msg << " #{decode_words(words)}"
    end
  end

  decode_message
end

decode_str('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# => "a box full of rubies"


#Alternative Solution for strings => words
# # words => strings 
#  def split_message(message)
#   splited_message = message.split('   ')
#   decode_message = ''

#   splited_message.each { |word| decode_message += "#{decode_word(word)} " }

#   decode_message
# end
