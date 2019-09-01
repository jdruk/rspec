$count = 0
describe "let" do
  # Só executa a operação quando é feita a primeira chamada a :count
  let(:count) { $count += 1 }

  it "memoizes the value" do
    expect(count).to eq(1) # Chamar a primeira vez
                           # Valor contido será 1
    expect(count).to eq(1) # Pega do CACHE
  end

  it "is not cached across examples" do
    expect(count).to eq(2)
  end
end

$count = 0
describe "let!" do
  invocation_order = []

  # Executa a chamada :count antes de entrar nos testes
  # como se fosse um before(:each)
  let!(:count) do
    invocation_order << :let!
    $count += 1
  end

  it "calls the helper method in a before hook" do
    invocation_order << :example
    expect(invocation_order).to eq([:let!, :example])
    expect(count).to eq(1)
  end
end
