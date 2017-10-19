require 'pry'
class Piglatinizer
  attr_reader :phrase

  def initialize(phrase)
    phrase_array = phrase.split(" ")
    phrase_array.map do |w|
      binding.pry
    
  end


end
