describe (1..5), "Ranges" do
  it "#cover" do
    expect(subject).to cover(2) # Igual ao include, mas apenas utilizado para RANGES.
    expect(subject).to cover(2,3,5)
    expect(subject).not_to cover(0)
  end
end
