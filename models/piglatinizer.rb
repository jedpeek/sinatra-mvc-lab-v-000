class PigLatinizer

  def translate(text)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(text[0])
      str + 'ay'
    elsif consonants.include?(text[0]) && consonants.include?(text[1])
      text[2..-1] + text[0..1] + 'ay'
    elsif consonants.include?(str[0])
      text[1..-1] + text[0] + 'ay'
    else
      text # return unchanged
    end
  end
  
end
