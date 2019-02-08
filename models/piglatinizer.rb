class PigLatinizer
  
  def piglatinize(user_phrase)
    words = user_phrase.split(' ')
    words.map {|w| piglatinize_word(w)}.join(' ')
  end
  
  def piglatinize_word(word)
    
    if /^[aeiou]/i.match(word)
      "#{word}way"
    else
      phrase = word.split(/([aeiou].*)/)
      "#{phrase[1]}#{phrase[0]}ay"
    end
  end
   
   
end
  
 