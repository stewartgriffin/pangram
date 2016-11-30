module BookKeeping
  VERSION = 3
end

class Pangram
  def self.pangram?(phrase)
    phrase_to_compare = phrase.downcase.each_char.to_a.uniq
    pangram = true
    ('a'..'z').to_a.each do |alphabet_chars|
      unless phrase_to_compare.include?(alphabet_chars)
        pangram = false
        break
      end
    end
    pangram
  end
end