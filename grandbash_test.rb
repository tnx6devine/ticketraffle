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
		
	end


	def test_assert_that_my_ticket_wins
		my_ticket="1111"
		winning_nums =["1111", "2222", "3333", "4444"]
		assert_equal(["1111"], winning_number(my_ticket, winning_nums))
	end

	def test_assert_that_my_ticket_is_so_close_false
		my_ticket = "1234"
		winning_nums = "1222"
		assert_equal(false, so_close(my_ticket, winning_nums))
	end

	def test_assert_that_my_ticket_is_so_close_true
		my_ticket = "1234"
		winning_nums ="1239"
		assert_equal(true, so_close(my_ticket, winning_nums))
	end

	def test_assert_that_winner_array_is_array
		my_ticket = "1234"
		winning_nums ="1239"
		assert_equal(Array, winner_array(my_ticket, winning_nums).class)
	end
end

