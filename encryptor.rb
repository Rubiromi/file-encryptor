class Encryptor

  def cipher
    {
      'A' => 'N', 'B' => 'O', 'C' => 'P', 'D' => 'Q', 'E' => 'R',
      'F' => 'S', 'G' => 'T', 'H' => 'U', 'I' => 'V', 'J' => 'W',
      'K' => 'X', 'L' => 'Y', 'M' => 'Z', 'N' => 'A', 'O' => 'B',
      'P' => 'C', 'Q' => 'D', 'R' => 'E', 'S' => 'F', 'T' => 'G',
      'U' => 'H', 'V' => 'I', 'W' => 'J', 'X' => 'K', 'Y' => 'L',
      'Z' => 'M'
    }
  end

  # def encrypt(string)
  #   words = string.upcase.split('')
  #   words.each { |letter| cipher[letter] }
  # end
  def encrypt(letter)
    cipher[letter.upcase]
  end

  def encrypt_word(string)
    letters = string.split('')
    results = []
    letters.each do |letter|
      encrypted_letter = encrypt(letter)
      results << encrypted_letter
    end
    results.join
  end

  def encrypt_file(filename)
    input = File.open(filename, 'r')
    contents = input.read
    encrypted_contents = encrypt_word(contents)
    input.close

    output = File.open(filename + '.encrypted', 'w')
    output.write(encrypted_contents)
    output.close
  end
end
