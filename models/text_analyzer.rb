class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    words = text.split(" ")
    words.count
  end

  def count_of_vowels
    text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
    arr = s1.split('')
    arr_n = arr.uniq
    arr_f = {}
    arr_n.map do |c|
      arr_f[c] =  arr.count(c)
    end
    largest = { arr_f.keys.first => arr_f.values.first }
    arr_f.each do |key, value|
      if value > largest.values.first
        largest = {}
        largest[key] = value
      end
    end
    return largest
  end
end
# Your TextAnalyzer model code will go here.
