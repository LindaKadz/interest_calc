require 'rails_helper'

RSpec.describe Calculator, type: :model do
  it 'should validate presence of principle' do
   calculator = Calculator.new({year: 3, rate: 2.5})
   calculator.valid?
   expect(calculator.errors.messages[:principle]).to include "can't be blank"
  end

  it { should validate_presence_of(:year)  }
  it { should validate_presence_of(:principle)  }
  it { should validate_presence_of(:rate)  }
end
