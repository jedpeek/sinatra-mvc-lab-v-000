class PigLatinizer

  def translate(word)
    if word =~ (/\A[aeiou]/i)
      word = word + 'ay'
    elsif word =~ (/\A[^aeiou]/i)
      match = /\A[^aeiou]/i.match(word)
      word = match.post_match + match.to_s + 'ay'
    end
    word
  end
end
