def get_order()
	p "How many pizzas?"
	order = gets.chomp.to_i
	order
end


def crusts()
	["bread", "pizza crust", "taco shell", "cookie dough"].sample
end

def sauce()
	["orange juice", "marinara", "cream cheese", "syrup"].sample
end

def toppings()
	["cheese", "pepperoni", "gummi bears", "grass"].sample
end

def special_requests()
	specials = [true, false].sample
	if specials == true
		", and extra cheese"
	end
end


def pizza_maker()

get_order.times do
	p "You ordered 1 #{crusts}, #{sauce}, #{toppings}#{special_requests} pizza"

	end
end

pizza_maker
