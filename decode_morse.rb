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
    @current_char=@morse_chat[char]
    @current_char
end

def decode_word(word)
    @current_word=word.split
    @decoded_word=''
   
    @current_word.each do |letter|
          decode_char(letter)
          @decode_word += decode_char(letter)
    end
    print("#{@decode_word}")
end
def decode_message(message)
    @messages=message.split("")
    @messages.each do |mess|
        decode_word(mess)
    end
end

decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
