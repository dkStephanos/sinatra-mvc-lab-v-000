class PigLatinizer

  attr_accessor :text, :converted_text

  vowels = "aeiou"

  def to_pig_latin(some_text)
    @text = some_text.split(" ")
    piglatinize(@text)
  end

  def piglatinize(text_to_convert)
    if(text_to_convert.count == 1)
      if(vowels.contains(text_to_convert[0]))
        @converted_text = text_to_convert + "way"
      elsif(vowels.contains(word[1]))
        @converted_text = text_to_convert.split.rotate(1).join + "ay "
      else
        @converted_text = text_to_convert.split.rotate(2).join + "ay "
      end
    else
      text_to_convert.each do |word|
        if(vowels.contains(word[0]))
          @converted_text += word + "way"
        elsif(vowels.contains(word[1]))
          @converted_text += word.split.rotate(1).join + "ay "
        else
          @converted_text += word.split.rotate(2).join + "ay "
        end
      end
    end
  end
end
