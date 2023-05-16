class Flavor < ApplicationRecord
  belongs_to :shop

  def self.only_true
    self.where(nut_free: true)
  end
end