describe Array.new([1,2,3]) do 
  it "#include" do
    expect(subject).to include(1)
    expect(subject).to include(2,3)
    expect(subject).to include(3,2,1)
  end

  it "#contain_exactly" do
    expect(subject).to contain_exactly(3,2,1) # tem que conter todos elementos.
  end

  it "#match_array" do
    expect(subject).to match_array([1,2,3]) # Sequência e elementos iguais.
  end
end
