require 'person'

describe "Verificar atributos" do 
  subject(:subject) {Person.new("Josafa", 28)}

  it "have_attributes" do 
    expect(subject).to have_attributes(name: "Josafa")
  end

  # List de alias
  # https://gist.github.com/JunichiIto/f603d3fbfcf99b914f86
end
