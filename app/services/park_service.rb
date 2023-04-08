class ParkService
  def self.park_by_state(park)
    get_url("/api/v1/parks?stateCode=#{park}")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://developer.nps.gov") do |faraday|
      faraday.headers["X-API-Key"] = ENV["NPS_API_KEY"]
    end
  end
end