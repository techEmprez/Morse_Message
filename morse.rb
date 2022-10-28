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

def decode_sentence(str)
    word = str.split
   word
end
    

# codes => str
