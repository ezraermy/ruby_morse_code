def decode_char(morse_code)
  morse_code_dict = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K',
    '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S',
    '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W',
    '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }

  morse_code_dict[morse_code]
end

def decode_word(morse_word)
  decoded_word = ""
  morse_chars = morse_word.split(" ")

  morse_chars.each do |morse_char|
    decoded_word += decode_char(morse_char)
  end

  return decoded_word
end