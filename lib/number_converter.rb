class NumberConverter

  def convert(arabic_number)

    case arabic_number
      when 0       then ''
      else convert_to_roman(arabic_number)
    end

  end

  def convert_to_roman(arabic)
    upper_bound = arabic + 1
    conversion_factors_in_arabic = [1,   4,    5,   9,   10,   40,  50,  90, 100, 400,  500, 900, 1000, upper_bound]
    conversion_factors_in_roman = ['I', 'IV', 'V', 'IX', 'X', 'XL', 'L', 'XC', 'C', 'CD', 'D', 'CM', 'M']

    required_factor = get_conversion_factor(arabic, conversion_factors_in_arabic)

    conversion_factors_in_roman[required_factor] + convert(arabic-conversion_factors_in_arabic[required_factor])
  end

  def get_conversion_factor(arabic, conversion_factors_in_arabic)
    array_element = 0

    while arabic >= conversion_factors_in_arabic[array_element +1]
      array_element = array_element + 1
    end

    array_element
  end

end


