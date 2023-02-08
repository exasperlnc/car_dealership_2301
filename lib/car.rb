class Car
  attr_reader :make_model
  attr_reader :monthly_payment
  attr_reader :loan_length
  attr_accessor :color

  def initialize(make_model, monthly_payment, loan_length)
    @make_model = make_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil

  end
  def make
    maker = make_model.split
    make = maker[0]
  end

  def model
    modeler = make_model.split
    model = modeler[1]  
  end

  def total_cost
    total = monthly_payment * loan_length
  end

  def paint!(color)
    self.color = color
  end


end
