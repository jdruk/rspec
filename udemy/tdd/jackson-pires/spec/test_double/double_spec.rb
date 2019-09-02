describe "Test Double" do
  it "User" do
    # Usando para simular uma classe
    user = double("User")
    allow(user).to receive_messages(:name => 'josafa')  # Duas maneiras de atribuir msgs
    allow(user).to receive(:password).and_return('secret')
    puts user.inspect
    puts user.name
    puts user.password
  end
end
