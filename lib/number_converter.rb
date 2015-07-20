class NumberConverter

  def initialize
  @conversion_factors_in_arabic = [ 1,   4,    5,   9,   10,   40,  50,  90,   100, 400,  500, 900, 1000, @upper_bound]
  @conversion_factors_in_roman  = ['I', 'IV', 'V', 'IX', 'X', 'XL', 'L', 'XC', 'C', 'CD', 'D', 'CM', 'M']
  end


  def convert(arabic)
    case arabic
      when 0       then ''
      else convert_to_roman(arabic)
    end
  end

  private

  def convert_to_roman(arabic)
    set_upper_bound(arabic)
    required_factor = get_conversion_factor(arabic)
    get_roman(arabic, required_factor)
  end


  def get_roman(arabic, required_factor)
    @conversion_factors_in_roman[required_factor] + convert(arabic-@conversion_factors_in_arabic[required_factor])
  end


  def set_upper_bound(arabic)
    @conversion_factors_in_arabic[-1] = arabic + 1
  end


  def get_conversion_factor(arabic)
    array_element = 0

    while using_wrong_factor(arabic, array_element)
      array_element = array_element + 1
    end

    array_element
  end


  def using_wrong_factor(arabic, array_element)
    arabic >= @conversion_factors_in_arabic[array_element + 1]
  end

end


