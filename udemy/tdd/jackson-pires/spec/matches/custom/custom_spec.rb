RSpec::Matchers.define :be_a_multiple_of do |expected|
  
  # expected == 5
  # actual == subject 
  match do |actual|
    actual % expected == 0
  end

  failure_message do |actual|
    "expected that #{actual} would be a multiple of #{expected}"
  end

  description do
    "be multiple of #{expected}"
  end
end

describe 15, 'Matcher Custom' do
  it {is_expected.to be_a_multiple_of(5)}
end


