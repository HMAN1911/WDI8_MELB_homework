# https://gist.github.com/epoch/ab1dcb06394621b883d7

# Write a program that cleans up user-entered phone numbers so that they can be sent SMS messages.

# The rules are as follows:

# If number < 10 digits assume that it is bad number
# If number = 10 digits assume that it is good
# If number = 11 digits and the first number is 1, trim the 1 and use the first 10 digits
# If number = 11 digits and the first number is not 1, then it is a bad number
# If the phone number is more than 11 digits assume that it is a bad number

# We've provided tests, now make them pass.
# Hint: Only make one test pass at a time.
# You can turn off tests by sending the message skip to it:

require 'minitest/autorun'
require "minitest/reporters" # optional
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new() # optional

require_relative './phone'

class PhoneTest < MiniTest::Test

  def test_cleans_number
    number = Phone.new("(123) 456-7890").number
    assert_equal "1234567890", number
  end

  def test_cleans_number_with_dots
    number = Phone.new("123.456.7890").number
    assert_equal "1234567890", number
  end

  def test_valid_when_11_digits_and_first_is_1
    number = Phone.new("11234567890").number
    assert_equal "1234567890", number
  end

  def test_invalid_when_11_digits
    number = Phone.new("21234567890").number
    assert_equal "0000000000", number
  end

  def test_invalid_when_9_digits
    number = Phone.new("123456789").number
    assert_equal "0000000000", number
  end

  def test_area_code
    number = Phone.new("1234567890")
    assert_equal "123", number.area_code
  end

  def test_pretty_print
    skip
    number = Phone.new("1234567890")
    assert_equal "(123) 456-7890", number.to_s
  end

end
