class NumberConverter
  def convert(arabic_number)
    if arabic_number == 0
      ""
    elsif arabic_number == 1
      "I"
    elsif arabic_number == 2
      "II"
    elsif arabic_number == 3
      "III"
    elsif arabic_number == 4
      "IV"
    else
      "V"
    end
  end
end

