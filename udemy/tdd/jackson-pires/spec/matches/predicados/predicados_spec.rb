"""
 Todos métodos com integorração, exemplo: nil?, nozero?... 
 podem ser convertidos em match adicionando o préfixo be
 seguido do nome do método sem a interrogação.
"""

describe "Predicados" do
  it "#nil?" do
    expect(1).not_to be_nil
    # e assim sucessivamente
  end
end
