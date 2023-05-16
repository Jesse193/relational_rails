class Shop < ApplicationRecord
  has_many :flavors, :dependent => :destroy

  def sort_by_alphabetical(sort)
    if sort == "clicked"
      flavors.order(:flavor)
    else
      flavors
    end
  end
  def flavors_count
    flavors.count
  end
  def self.decending
    self.order("created_at DESC")
  end
end