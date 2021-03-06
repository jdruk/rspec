require "calculator"

describe Calculator, :calculator do
	context '#sum' do
		it 'Somar dois números', :slow do
			calc = Calculator.new
			result = calc.sum(5,5)
			expect(result).to(eq(10))
		end

		xit 'Dividir dois números'
	end
end

describe Calculator do
	context '#sum' do
		it 'Somar dois números' do
			result = subject.sum(5,5)
			expect(result).to(eq(10))
		end

		xit 'Dividir dois números'
	end
end

describe "classe Calculator" do
	subject(:calc) {Calculator.new}

	context '#sum' do
		it 'Somar dois números' do
			calc = Calculator.new
			result = calc.sum(5,5)
			expect(result).to(eq(10))
		end

		xit 'Dividir dois números'
	end
end
