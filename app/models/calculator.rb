class Calculator < ApplicationRecord
  before_save :get_total

  validates :principle, presence: true
  validates :year, presence: true
  validates :rate, presence: true

  def get_total
    self.total = principle * ( 1 +((rate/100) * year))
  end
end
