class Fare
    attr_accessor :fare, :point1, :point2

    def initialize(fare, dept, dest)
    	if dept == dest then
    	  raise "出発駅と到着駅が同じです。"
    	end
        @fare = fare
        @point1 = Station.new(dept)
        @point2 = Station.new(dest)
    end
end