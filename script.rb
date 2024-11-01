def cypher (str, offset)
  alpha_lower = ('a'..'z').to_a
  alpha_upper = ('A'..'Z').to_a
  encrypted_str = ''

  str.each_char do |char|
    if char =~ /[a-z]/ # Checks if it's a lowercase character
      index = alpha_lower.index(char)
      encrypted_str << alpha_lower[(index + offset) % 26]
    elsif char =~ /[A-Z]/
      index = alpha_upper.index(char)
      encrypted_str << alpha_upper[(index + offset) % 26]
    else
      encrypted_str << char
    end
  end
  encrypted_str
end

puts cypher('Test', 1)
