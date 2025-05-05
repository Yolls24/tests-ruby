def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, n = 2)
  ([string] * n).join(" ")
end

def start_of_word(string, n)
  string[0...n]
end

def first_word(string)
  string.split.first
end

def titleize(string)
  little_words = %w[and over the]
  words = string.split

  words.each_with_index.map do |word, index|
    if index == 0 || !little_words.include?(word)
      word.capitalize
    else
      word
    end
  end.join(" ")
end
