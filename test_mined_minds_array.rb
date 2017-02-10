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
end