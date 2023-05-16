require "rails_helper"

describe Shop, type: :model do
   describe "validations" do
      it {should have_many(:flavors)}
   end
end