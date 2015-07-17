class NumberConverter

  def convert(arabic_number)

    case arabic_number
      when 0      then ''
      when 1..3   then 'I'  + convert(arabic_number - 1)
      when 4      then 'IV'
      when 5..8   then 'V'  + convert(arabic_number - 5)
      when 9      then 'IX'
      when 10..39 then 'X'  + convert(arabic_number - 10)
      when 40..49 then 'XL' + convert(arabic_number - 40)
      when 50..89 then 'L'  + convert(arabic_number - 50)
      when 60..99 then 'XC' + convert(arabic_number - 90)
      when 100    then 'C'
    end

  end
end


