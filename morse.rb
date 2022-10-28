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

#  split word pattern and decode char
def decode_word(word)
  split_word = word.split
  result = ''

  split_word.each { |char| result += decode_char(char) }

  result
end

# split pattern message into word
def split_message(message)
  splited_message = message.split('   ')
  decode_message = ''

  splited_message.each { |word| decode_message += "#{decode_word(word)} " }

  decode_message
end

puts split_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
