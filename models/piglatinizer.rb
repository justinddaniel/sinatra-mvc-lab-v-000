class PigLatinizer
  attr_accessor :phrase

  def initialize(phrase = nil)
    @phrase = phrase
  end

  def piglatinize
    phrase_array = self.phrase.split(" ")
    phrase_array.map! do |w|
      if w.chars.first.match(/[AaEeIiOoUu]/) != nil
        "#{w}way"
      else
        wn = w.reverse
        wnp = wn[0..-2].reverse + wn[-1]
        "#{wnp}ay"
      end
    end
    phrase_to_print = phrase_array.join(" ")
    "#{phrase_to_print}"
  end

end
