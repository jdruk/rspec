require 'student'

describe "Mock" do
  it "#bar" do
    
    # Setup
    student = Student.new

    # Verify
    expect(student).to receive(:bar)

    # exercice
    student.bar
  end
end
