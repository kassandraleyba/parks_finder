class ParkFacade
  def self.park_by_state(park)
    json = ParkService.park_by_state(park)

    @parks = json[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end