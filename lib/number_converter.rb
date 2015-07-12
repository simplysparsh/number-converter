class NumberConverter

  def convert(arabic_number)

    if arabic_number == 0
      ""
    elsif arabic_number <= 3
      "I" + convert(arabic_number-1)
    elsif arabic_number == 4
      "I" + convert(5)
    elsif arabic_number <= 8
      "V" + convert(arabic_number - 5)
    elsif arabic_number == 10
      "X"
    elsif arabic_number == 9
      "I" + convert(10)

    end
  end

end


