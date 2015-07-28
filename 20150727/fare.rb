class Fare
    attr_accessor :fare, :point1, :point2, :key

    def initialize(fare, dept, dest)
    	if dept == dest then
    	  raise "出発駅と到着駅が同じです。"
    	end
        @fare = fare
        @point1 = Station.new(dept)
        @point2 = Station.new(dest)
        @key = create_key(dept, dest)
    end
end

def create_key(dept, dest)
    if dept < dest then
        return dept + dest
    else
        return dest + dept
    end
end
