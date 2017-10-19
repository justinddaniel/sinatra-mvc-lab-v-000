class Piglatinizer
  attr_reader :phrase

  def initialize(phrase)
    phrase_array = phrase.split(" ")
    phrase_array.map do |w|
      if w.chars.first.match(/[AaEeIiOoUu]/) != nil
        "#{w}way"
      else
        wn = w.reverse
        wnp = wn[0..-2].reverse + wn[-1]
        "#{wnp}ay"
      end
    end

  end


end
