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

end