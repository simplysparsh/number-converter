class NumberConverter

  def convert(arabic_number)
    if arabic_number == 0
      ""
    elsif arabic_number == 1
      "I" + convert(0)
    elsif arabic_number == 2
      "I" + convert(1)
    elsif arabic_number == 3
      "I" + convert(2)
    elsif arabic_number == 4
      "I" + convert(5)
    elsif arabic_number == 5
      "V" + convert(0)
    elsif arabic_number == 6
      "V" + convert(1)
    else
      "VII"
    end
  end

end


