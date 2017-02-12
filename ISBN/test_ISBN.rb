require 'minitest/autorun'
require_relative 'ISBN.rb'

class TestISBN < Minitest::Test

	def test_one_one
		assert_equal(1, 1)
	end

	def test_detect_invalid_chars_a
		results = check_chars('1234a5')
		assert_equal(false, results)	
	end

	def test_none_invalid_true
		results = check_chars('1 2 3-4-5')
		assert_equal(true, results)	
	end

	def test_detect_invalid_chars_symbol
		results = check_chars('$12345')
		assert_equal(false, results)	
	end

	def test_only_numbers_true
		results = check_chars('1234567890')
		assert_equal(true, results)	
	end

end