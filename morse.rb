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

# words => strings 
 def decode_str(str)
  words_arr = str.split('   ')
  decode_msg = ' '

  words_arr.each = do |words|
  decode_msg << ' #{decode_words(words)}'
  end

  decode_msg
end
