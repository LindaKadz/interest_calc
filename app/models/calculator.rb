class Calculator < ApplicationRecord
  before_save :get_total

  validates :principle, presence: true, numericality: true
  validates :year, presence: true, numericality: true
  validates :rate, presence: true, numericality: true

  def get_total
    self.total = principle * ( 1 +((rate/100) * year))
  end
end
