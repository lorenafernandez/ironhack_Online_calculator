require 'pry'
require 'pry-byebug'

class Calculator

	def which_operation(value2,operacion)
		@value1 = IO.readlines('file.txt')[0].to_f
		@value2 = value2
		if operacion == 'suma'
			add_calculator
		elsif operacion == 'resta'
			sub_calculator
		elsif operacion == 'multiplicacion'
			multiply_calculator
		elsif operacion == 'division'
			division_calculator
		end
				
	end

	def add_calculator
		@sol_add = @value1 + @value2
	end

	def sub_calculator
		@sol_add = @value1 - @value2
	end

	def multiply_calculator
		@sol_multiply = @value1 * @value2
	end

	def division_calculator
		@sol_div = @value1 / @value2
	end
end