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

#Tests for length after removing spaces and dashes.
#Does NOT remove invalid characters, so these ARE counted as well.
class TestStrippedLength < Minitest::Test

	def test_length_no_space_dash
		results = strip_length('123456789')
		assert_equal(9, results)
	end

	def test_length_spaces
		results = strip_length('1 23 45 67 89')
		assert_equal(9, results)
	end

	def test_length_dashes
		results = strip_length('1--23#4-567-8-9')
		assert_equal(10, results)
	end

	def test_length_spaces_and_dashes
		results = strip_length('1 2  3-456--78905hf')
		assert_equal(13, results)
	end

end

class TestLastChar < Minitest::Test

	def test_last_char_x_true
		results = last_char('12345X')
		assert_equal(true, results)		
	end

end