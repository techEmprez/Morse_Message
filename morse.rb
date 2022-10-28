def decode_char (char)
  letter_code = {
  '.-' : 'a',
  '-...' : 'b',
  '-.-.' : 'c',
  '-..' : 'd',
  '.' : 'e',
  '..-.' : 'f',
  '--.' : 'g',
  '....' : 'h',
  '..' : 'i',
  '.---' : 'j',
  '-.-' : 'k',
  '.-..' : 'l',
  '--' : 'm',
  '-.' : 'n',
  '---' : 'o',
  '.--.' : 'p',
  '--.-' : 'q',
  '.-.' : 'r',
  '...' : 's',
  '-' : 't',
  '..-' : 'u',
  '...-' : 'v',
  '.--' : 'w',
  '-..-' : 'x',
  '-.--' : 'y',
  '--..' : 'z'
 }
 puts letter_code[char]
end


# words => strings 

def decode_word (str)
    str.word = str.split
    return (/   /)

    

# codes => str
