require "rails_helper"

describe Flavor, type: :model do
  describe "relationships" do
    it {should belong_to(:shop)}
  end
end