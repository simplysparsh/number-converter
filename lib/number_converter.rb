class NumberConverter

  def convert(arabic_number)

    if arabic_number == 0
       ""
    elsif arabic_number == 4
      "IV"
    elsif arabic_number == 9
      "IX"
    elsif arabic_number == 100
      "C"
    elsif arabic_number >= 1 && arabic_number  <=  3
      "I"  + convert(arabic_number - 1)
    elsif arabic_number >= 5 && arabic_number  <=  8
      "V"  + convert(arabic_number - 5)
    elsif arabic_number >= 10 && arabic_number <= 39
      "X"  + convert(arabic_number - 10)
    elsif arabic_number >= 40 && arabic_number <= 49
      "XL" + convert(arabic_number - 40)
    elsif arabic_number >= 50 && arabic_number <= 89
      "L"  + convert(arabic_number - 50)
    elsif arabic_number >= 90 && arabic_number <= 99
      "XC" + convert(arabic_number - 90)

    end

  end

  
end


