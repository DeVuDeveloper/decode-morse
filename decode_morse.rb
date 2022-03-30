@morse_chat = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(char)
  @current_char = @morse_chat[char]
  @current_char
end

def decode_word(word)
  @current_word = word.split
  @decoded_word = ''
  @current_word.each do |char|
    @decoded_word += decode_char(char)
  end

  @decoded_word
end

def decode_message(message)
  @words = message.split('   ')
  @decoded_msg = ''

  @words.each do |word|
    @decoded_msg += "#{decode_word(word)} "
  end

  @decoded_msg.strip
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
