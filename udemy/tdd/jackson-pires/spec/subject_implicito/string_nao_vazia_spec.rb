require 'string_nao_vazia'

describe String do
  describe StringNaoVazia, "Classe Filha de String" do 
    it "Check StringNaoVazia" do 
      expect(subject).to eq("NÃO VAZIA")
    end
  end
end
