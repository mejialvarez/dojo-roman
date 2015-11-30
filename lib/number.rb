class Number
  attr_accessor :hundreds, :units, :tens

  def initialize(number)
    @number = number
    @roman_hundreds = ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM']
    @roman_tens = ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
    @roman_units = ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
  end

  def to_roman
    if @number == 1000
      'M'

    elsif @number >= 100 && @number <= 999
      hundred = @roman_hundreds[self.hundred]
      ten = @roman_tens [self.ten]
      unit = @roman_units[self.unit]
      "#{hundred}#{ten}#{unit}"

    elsif @number >= 10 && @number <= 99
      ten = @roman_tens [self.ten]
      unit = @roman_units[self.unit]
      "#{ten}#{unit}"

    else
      unit = @roman_units[self.unit]
      "#{unit}"
    end
  end

  def unit
    @number % 10
  end

  def ten
    (@number / 10) % 10
  end

  def hundred
    @number / 100
  end

end