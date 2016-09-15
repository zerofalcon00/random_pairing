require_relative "random_pairing.rb"
require "minitest/autorun"

class TestRandomPairing < Minitest::Test
	def test_array_of_nothing_returns_array
		array = []
		assert_equal([], random_pairing(array))
	end

	def test_array_with_5_names_returns_2_arrays
		array = random_pairing(["Josh","John","Dawn","Cheri","Caleb"])
		assert_equal(2, array.count)
	end

	def test_array_with_6_names_returns_3_arrays
		array = random_pairing(["Josh","John","Dawn","Cheri","Caleb","Marv"])
		assert_equal(3, array.count)
	end

	def test_array_with_7_names_returns_3_arrays
		array = random_pairing(["Josh","John","Dawn","Cheri","Caleb","Marv","Amanda"])
		assert_equal(3, array[0].count)
	end


end