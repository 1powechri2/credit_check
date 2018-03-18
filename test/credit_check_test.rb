require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check.rb'
require 'pry'

class CreditCheckerTest < Minitest::Test

  def credit_checker_exists
    credit_check = CreditChecker.new

    assert_instance_of CreditChecker, credit_check
  end

  def test_cardnum
    credit_check = CreditChecker.new(4929735477250543)

    assert_equal 4929735477250543, credit_check.cardnum
  end

  def test_cardnum_to_array
    credit_check = CreditChecker.new(4929735477250543)

    assert_equal = [4,9,2,9,7,3,5,4,7,7,2,5,0,5,4,3], credit_check.cardnum_to_array
  end

  def test_seperate_even_index
    credit_check = CreditChecker.new(4929735477250543)

    assert_equal = [4,2,7,5,7,2,0,4], credit_check.seperate_even_index
  end

  def test_odd_index
    credit_check = CreditChecker.new(4929735477250543)

    assert_equal = [9,9,3,4,7,5,5,3], credit_check.seperate_odd_index
  end

  def check_times_2
    credit_check = CreditChecker.new(4929735477250543)

    assert_equal = [8,4,14,10,14,4,0,8], credit_check.times_2
  end

  def convert_digits_over_10
    credit_check = CreditChecker.new(4929735477250543)

    assert_equal = [8,4,5,1,5,4,0,8], credit_check.convert_digits_over_10
  end

  def test_sum_array_odd_index
    credit_check = CreditChecker.new(4929735477250543)

    assert_equal = 45, credit_check.sum_array_odd_index
  end

  def test_sum_array_even_index
    credit_check = CreditChecker.new(4929735477250543)

    assert_equal = 35, credit_check.sum_array_even_index
  end

  def test_add_all_together
    credit_check = CreditChecker.new(4929735477250543)

    assert_equal = 80, credit_check.add_all_together
  end

  def test_check_for_validity
    credit_check = CreditChecker.new(4929735477250543)

    assert_equal = true, credit_check.check_for_validity
  end

end
