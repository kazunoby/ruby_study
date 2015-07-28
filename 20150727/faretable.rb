require_relative 'fare'

class FareTable
    def initialize
        @fares = []
    end
    def add(fare)
    	@fares << fare
    end
    def find_fare(dept, dest)
    	fareFind = @fares.find {|fare| (fare.point1.name == dept && fare.point2.name == dest) || (fare.point1.name == dest && fare.point2.name == dept)}
    	return fareFind.fare
    end
end
