describe "Match Igualdade" do 
  context "Objecto/Conteúdo" do 
    it "#equal" do 
      x = "ruby"
      y = "ruby"
      expect(x).not_to equal(y)
    end

    it "#be" do 
      # Atalho para equal()
      x = "ruby"
      y = "ruby"
      expect(x).not_to be(y)
    end
  end

  context "Conteúdo" do
    it "#eql" do 
      x = "ruby"
      y = "ruby"
      expect(x).to eql(y)
    end

    it "#eq" do
      # Atalho para eql()
      x = "ruby"
      y = "ruby"
      expect(x).to eq(y)
    end
  end
end
