require 'minitest/autorun'
require_relative 'ISBN.rb'

class TestISBN < Minitest::Test

	def test_one_one
		assert_equal(1, 1)
	end

	def test_detect_invalid_chars
		results = check_chars('1234a5')
		assert_equal(false, results)	
	end

end