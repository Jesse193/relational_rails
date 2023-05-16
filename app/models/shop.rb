class Shop < ApplicationRecord
  has_many :flavors

  def self.sort_by_alphabetical
    self.order(:flavor)
  end
end