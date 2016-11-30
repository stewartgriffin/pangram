module BookKeeping
  VERSION = 3
end

class Pangram
  def self.pangram?(phrase)
    pangram = true
    ('a'..'z').to_a.each do |alphabet_chars|
      unless phrase.each_char.to_a.include?(alphabet_chars)
        pangram = false
        break
      end
    end
    pangram
  end
end