describe "Match Satify" do
  # Output:
  # should satisfy expression `x % 2 == 0`
  it { expect(2).to satisfy { |x| x % 2 == 0}}

  # Output:
  # should number even
  it { 
    expect(2).to satisfy("number even") do |x|
      x % 2 == 0
    end
  }
end
