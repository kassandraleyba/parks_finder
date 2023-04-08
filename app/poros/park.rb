class Park
  attr_reader :name, 
              :description, 
              :directions, 
              :hours

  def initialize(data)
    @name = data[:name]
    @description = data[:description]
    @directions = data[:directions]
    @hours = data[:operatingHours][0][:standardHours][:wednesday]
  end
end