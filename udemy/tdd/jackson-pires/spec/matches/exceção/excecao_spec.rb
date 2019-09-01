require 'calculator'

describe Calculator, "Exceções" do 
  context "#div" do
    it "Modo genêrico" do 
      expect{subject.div(4,0)}.to raise_exception
    end

    it "Explícito" do
      expect{subject.div(4, 0)}.to raise_error(ZeroDivisionError)
      expect{subject.div 4, 0}.to raise_error(ZeroDivisionError,"divided by 0")
      expect{subject.div 4, 0}.to raise_error("divided by 0")
      expect{subject.div 4, 0}.to raise_error(/divided/) # Expressão Regular
    end
  end
end
