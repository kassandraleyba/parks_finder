require "rails_helper"

RSpec.describe Park do
  it "exists" do
    attrs = {
      name: "Acadia",
      description: "Acadia National Park protects the natural beauty of the highest rocky headlands along the Atlantic coastline of the United States, an abundance of habitats, and a rich cultural heritage.",
      directions: "From the south: Take I-95 to Exit 194 (Belfast). Turn left onto Route 3 and go 5.5 miles to the park entrance. From the north: Take I-95 to Exit 194 (Belfast). Turn right onto Route 3 and go 5.5 miles to the park entrance.",
      operatingHours: [{
        standardHours: {
          wednesday: "Sunrise to Sunset"
          }
        }]
    }

    park = Park.new(attrs)
  
    expect(park).to be_a(Park)
    expect(park.name).to eq("Acadia")
    expect(park.description).to eq("Acadia National Park protects the natural beauty of the highest rocky headlands along the Atlantic coastline of the United States, an abundance of habitats, and a rich cultural heritage.")
    expect(park.directions).to eq("From the south: Take I-95 to Exit 194 (Belfast). Turn left onto Route 3 and go 5.5 miles to the park entrance. From the north: Take I-95 to Exit 194 (Belfast). Turn right onto Route 3 and go 5.5 miles to the park entrance.")
    expect(park.hours).to eq("Sunrise to Sunset")
  end
end