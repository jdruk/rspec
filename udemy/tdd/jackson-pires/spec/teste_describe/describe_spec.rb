# Argumento passado para describe
# será o subject.

describe "josafa" do 
  it "#size" do
    expect(subject.size).to eq(6)
  end
end

describe [1,5] do
  it "is_collection?" do
    expect(subject).to be_kind_of(Array)
  end
end
