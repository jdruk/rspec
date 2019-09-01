require 'string_nao_vazia'

describe "Classes" do 
  subject(:subject){StringNaoVazia.new}

  it "be_instance_of" do
    expect(10).to be_instance_of(Integer) # Tem que bater exatamente com a classe!
  end

  it "be_kind_of" do 
    expect(subject).to be_kind_of(String) # Pode ser por herança
    expect(subject).to be_kind_of(StringNaoVazia)
  end

  it "be_an / be_a" do 
    expect(subject).to be_an String # Mesma coisa que be_kind_of
    expect(subject).to be_an StringNaoVazia

    # Iguais, mas seguem a regra da gramática Inglesa
    expect(subject).to be_a String 
    expect(subject).to be_a StringNaoVazia
  end

  it "respond_to" do 
    expect(subject).to respond_to(:size) # Checka se responde pelo método
  end
end
