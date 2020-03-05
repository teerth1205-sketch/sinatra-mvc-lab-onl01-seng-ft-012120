require 'pry'

class  PigLatinizer

  
  
def piglatinize(text)
  @text = text
  arr2 = []
  arr1  = @text.split(" ")
  arr1.map do |w|
  arr2 << pig_latin(w)
  end 
  new = arr2.join(" ")
  
end 
    
    def pig_latin(word)
      
    letters = word.split("")
    if vowel?(letters[0]) 
       word << "way"
       return word
    elsif letters.size > 1
      until vowel?(letters[0]) 
        letters << letters.shift
      end
      letters.join << "ay"
    end 
  
  end


def vowel?(letter)
    letter.downcase
    letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
end
      
end 