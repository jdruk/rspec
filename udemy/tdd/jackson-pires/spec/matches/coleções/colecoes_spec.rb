describe "Coleções Match All" do
  it { expect([1,2,3]).to all(be_a(Integer)) }
  it { expect(['josafa', 'josue']).to all be_a(String).and start_with('j')}
end
