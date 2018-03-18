# Checks a credit card number through the Luhn algorithm
cardnum = 4929735477250543
valid = false

class CreditChecker
  attr_reader :cardnum

  def initialize(cardnum)
    @cardnum = cardnum
  end

  def cardnum_to_array
    @cardnum.digits.reverse
  end

  def seperate_even_index
    cardnum_to_array.values_at(0, 2, 4, 6, 8, 10, 12, 14)
  end

  def seperate_odd_index
    cardnum_to_array.values_at(1, 3, 5, 7, 9, 11, 13, 15)
  end

  def times_2
    seperate_odd_index.map do |nums|
      nums * 2
    end
  end

  def convert_digits_over_10
    times_2.map do |num|
      if num > 9
      num - 9
      else
        num
      end
    end
  end

  def sum_array_odd_index
    convert_digits_over_10.sum
  end

  def sum_array_even_index
    seperate_even_index.sum
  end

  def add_all_together
    sum_array_odd_index + sum_array_even_index
  end

  def check_for_validity
    if add_all_together % 10 == 0
      puts "Valid"
    else
      puts "Invalid"
    end
  end

end

credit_check = CreditChecker.new(cardnum)
puts credit_check.check_for_validity
