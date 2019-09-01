describe "Match Comparação" do
  it ">" do 
    expect(5).to be > 1
  end
  
  it ">=" do 
    expect(5).to be >= 1
  end
  
  it "<" do 
    expect(5).to be < 10
  end
  
  it "<=" do 
    expect(5).to be <= 10
  end

  it "be_between inclusive" do 
    expect(5).to be_between(5,7).inclusive
  end

  it "be_between exclusive" do
    expect(5).to be_between(4,7).exclusive
  end

  it "match /regex/" do
    # Usando Expressão Regular
    expect("email@email.com.br").to match(/..@../)
  end

  it "start_with" do 
    expect('Email: devjosafa@gmail.com').to start_with("Email:")
    expect([1,2,3]).to start_with([1])
  end
  
  it "end_with" do 
    expect('Email: devjosafa@gmail.com assunto').to end_with("assunto")
    expect([1,2,3]).to end_with([3])
  end
end
