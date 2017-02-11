require 'minitest\autorun'
require_relative 'pairing.rb'

class TestParingFunction < Minitest::Test
	#First test verifies test function works.
	def test_true_is_true
		assert_equal(true, true)		
	end

	def test_array_class
		results = pairs(['A', 'B'])
		assert_equal(Array, results.class)
	end
	#Updated this test.  Two items should return 1 pair.
	def test_two_letters_one_pair
		results = pairs(['A', 'B'])
		assert_equal(1, results.count)
	end

	def test_four_letters_two_pairs
		results = pairs(['A', 'B', 'C', 'D'])
		assert_equal(2, results.count)
	end

	def test_five_letters_two_pairs
		results = pairs(['A', 'B', 'C', 'D', 'E'])
		assert_equal(2, results.count)
	end

	def test_seven_letters_three_pairs
		results = pairs(['A', 'B', 'C', 'D', 'E', 'F', 'G'])
		assert_equal(3, results.count)
	end

	def test_eight_letters_four_pairs
		results = pairs(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'])
		assert_equal(4, results.count)
	end

	def test_ten_letters_five_pairs
		results = pairs(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'])
		assert_equal(5, results.count)
	end

	def test_eleven_letters_five_pairs
		results = pairs(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K'])
		assert_equal(5, results.count)
	end

end