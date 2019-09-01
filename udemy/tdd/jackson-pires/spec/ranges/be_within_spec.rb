describe "be_within" do
  # Sobre número de ponto flutuante.
  # pode-se dar um delta (diferença) a partir de um número base
  # Exemplo:
  # be_within(DELTA).of(BASE)
  # be_within(0.5).of(12)
  
  it { expect(12.5).to be_within(0.5).of(12)}
  it { expect([12.5, 12, 11.5]).to all be_within(0.5).of(12)}
end
