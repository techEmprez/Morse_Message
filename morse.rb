def decode_char(char)
  letter_code = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
 }
  letter_code[char]
end

# words => letter 
def decode_words(word)
  translated_word = ''

  word.split.each do |i|
    translated_word << decode_char(i)
  end

  translated_word
end

def decode_str(str)
  words_arr = str.split(/   /)
  decode_msg = ''

  words_arr.each_with_index do |words, i|
    if i == 0
      decode_msg << "#{decode_words(words)}"
    else 
      decode_msg << " #{decode_words(words)}"
    end
  end

  decode_msg
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
