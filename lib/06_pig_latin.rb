def translate(sentence)
    sentence.split.map { |word| translate_word(word) }.join(" ")
  end
  
  def translate_word(word)
    vowels = %w[a e i o u]
  
    # Regexp pour les sons complexes (sch, qu, consonnes)
    if word =~ /\A[aeiou]/
      word + "ay"
    elsif word =~ /\Asch/
      word[3..-1] + "schay"
    elsif word =~ /\Aqu/
      word[2..-1] + word[0..1] + "ay"
    elsif word =~ /\A[^aeiou]*qu/
      qu_index = word.index("qu") + 2
      word[qu_index..-1] + word[0...qu_index] + "ay"
    else
      # Trouver la première voyelle
      consonant_cluster = word[/\A[^aeiou]+/]
      word[consonant_cluster.length..-1] + consonant_cluster + "ay"
    end
  end