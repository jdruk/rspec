require 'person'

shared_examples 'status' do |feeling|
  it feeling do
    person.send("#{feeling}!")
    expect(person.status).to eq("Feeling #{feeling.capitalize}!")
  end
end

describe Person do 
  subject(:person){Person.new('josafa', 28)}
  
  # Tem a mesma função mas a saída e diferente
  include_examples 'status', :sad
  it_should_behave_like 'status', :sick
  it_behaves_like 'status', :happy
end
