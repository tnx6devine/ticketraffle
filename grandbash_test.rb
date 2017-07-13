require "minitest/autorun"
require_relative "grandbash.rb"

class TestGrandBash < Minitest::Test
	def test_assert_that_1_equals_1
		assert_equal(1, 1)
	end

	def test_assert_that_an_empty_array_exists
		my_ticket="1234"
		winning_nums=["2222", "3333", "4444"]
		assert_equal([], winning_number(my_ticket, winning_nums))
		p winning_number(my_ticket, winning_nums)
	end


	def test_assert_that_my_ticket_wins
		my_ticket="1111"
		winning_nums=["1111", "2222", "3333", "4444"]
		assert_equal([my_ticket], winning_number(my_ticket, winning_nums))
	end

end