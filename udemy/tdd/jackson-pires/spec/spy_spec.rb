require 'spec_helper'

class User
  def self.test_spy(obj)
    obj.name("josafa")
  end
end

describe "Spy" do

  it "Internal Test" do
    classe = spy('name')
    User.test_spy(classe)
    expect(classe).to have_received(:name) 
  end
end
