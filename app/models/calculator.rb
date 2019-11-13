class Calculator < ApplicationRecord
  before_save :get_total
  def get_total
    self.total = principle * ( 1 +((rate/100) * year))
  end
end
