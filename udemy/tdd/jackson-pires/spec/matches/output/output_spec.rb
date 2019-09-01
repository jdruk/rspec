describe "Match for Output" do 
  it { expect{puts "josafa"}.to output.to_stdout}
  it { expect{puts "josafa"}.to output("josafa\n").to_stdout} # Saída exata
  it { expect{puts "josafa"}.to output(/josafa/).to_stdout} # Regex
  
  # erros
  it { expect{warn "josafa"}.to output.to_stderr}
  it { expect{warn "josafa"}.to output("josafa\n").to_stderr} # Saída exata
  it { expect{warn "josafa"}.to output(/josafa/).to_stderr} # Regex
end
