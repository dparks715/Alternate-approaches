require 'minitest/autorun'
require_relative 'mined_minds_array.rb'

class TestMinedMindsArray < Minitest::Test

	def test_one_equal_one
		assert_equal(1,1)
	end

	def test_function_produces_array
		results = mmarray()
		assert_equal(Array, results.class)
	end

	def test_length_of_array
		results = mmarray()
		assert_equal(100, results.length)
	end

	def test_two_is_two
		results = mmarray()
		assert_equal(2, mmarray[1])
	end

	def test_51_is_51
		results = mmarray()
		assert_equal(51, mmarray[50])
	end
	#Tests for div by 15
	def test_fifteen_mined_minds
		results = mmarray()
		assert_equal('mined minds', mmarray[14])
	end

	def test_thirty_mined_minds
		results = mmarray()
		assert_equal('mined minds', mmarray[29])
	end

	def test_forty_five_mined_minds
		results = mmarray()
		assert_equal('mined minds', mmarray[44])
	end

	def test_ninety_mined_minds
		results = mmarray()
		assert_equal('mined minds', mmarray[89])
	end
	#Tests for divisible by 5
	def test_five_minds
		results = mmarray()
		assert_equal('minds', mmarray[4])
	end

	def test_ten_minds
		results = mmarray()
		assert_equal('minds', mmarray[9])
	end

	def test_thirty_five_minds
		results = mmarray()
		assert_equal('minds', mmarray[34])
	end

	def test_fifty_minds
		results = mmarray()
		assert_equal('minds', mmarray[49])
	end
	#Tests for divisible by 3
	def test_three_minds
		results = mmarray()
		assert_equal('mined', mmarray[2])
	end
end