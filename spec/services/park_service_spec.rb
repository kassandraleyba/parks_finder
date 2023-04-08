require "rails_helper"

RSpec.describe ParkService do
  context "class methods" do
    context "#park by state" do
      it "returns parks by state" do
        search = ParkService.park_by_state("CO")
       
        expect(search).to be_a(Hash)
      end
    end
  end
end