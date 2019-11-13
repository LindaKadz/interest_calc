require 'rails_helper'

RSpec.describe CalculatorsController, type: :controller do
  it 'should create a record' do
   calculator = Calculator.create({principle: 5000, year: 3, rate: 2.5})
   calculator.valid?
   expect(calculator).to include "created"
  end
end
