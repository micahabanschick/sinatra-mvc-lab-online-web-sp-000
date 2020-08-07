class PigLatinizer 
  
  # attr_accessor :text 
  
  # def initialize(text=nil)
  #   @text = text 
  # end 
  
  def piglatinize(text)
    text.split(" ").length > 1 ?  pig_paragraph(text) : pig_word(text)
  end
  
  def pig_word(word)
    cons = "bcdfghjklmnpqrstvwxyz"
    vowels = "aeiou"
    if cons.include?(word[0])
      initial = word.slice(0,)
      word = "#{word.slice(1, word.length)}#{word[0]}ay"
    else
      word = "#{word}way"
    end
  end 

  def pig_paragraph(paragraph)
    pig_arr = paragraph.split(" ").map{|word| pig_word(word)}
    pig_arr.join(" ")
  end
  
end 