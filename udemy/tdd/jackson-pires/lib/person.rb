class Person 
  attr_accessor :name, :old 

  def initialize name, old
    @name = name
    @old = old
  end

  def happy!
    @status = 'Feeling Happy!'
  end

  def sad!
    @status = 'Feeling Sad!'
  end

  def sick!
    @status = 'Feeling Sick!'
  end

  def status
    @status
  end
end
