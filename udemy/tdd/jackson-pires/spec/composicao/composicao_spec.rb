describe "Josafá Martins dos Santos" do 
  it { is_expected.to start_with('Josafá').and end_with('Santos') }

  it { expect(styles).to eq('rock').or eq('pop').or eq('rapper') }

end
