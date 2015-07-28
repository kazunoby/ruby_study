require 'test/unit'
require_relative 'station'
require_relative 'fare'
require_relative 'faretable2'


class TestExpense < Test::Unit::TestCase
	def test_station_name
		point = Station.new("Shinagawa")
		assert_equal("Shinagawa", point.name)
	end
    def test_fare
        fare = Fare.new(200, "ABC", "XYZ")
        assert_equal(200, fare.fare)
        assert_equal("ABCXYZ", fare.key)
    end
    def test_fare2
        fare = Fare.new(100, "XYZ", "ABC")
        assert_equal(100, fare.fare)
        assert_equal("ABCXYZ", fare.key)
    end
    def test_fare_error
        # fare = Fare.new(0, "Shinagawa", "Shinagawa")
        assert_raise RuntimeError do
        	Fare.new(0, "Shinagawa", "Shinagawa")
        end
    end
    def test_find_fare_Shinagawa_Shinjuku
        fare = Fare.new(200, "Shinagawa", "Shinjuku")
        fareTable = FareTable.new
        fareTable.add(fare)
        assert_equal(200,fareTable.find_fare("Shinagawa", "Shinjuku"))
    end
    def test_find_fare_Tokyo_Shinbashi
        fare = Fare.new(140, "Tokyo", "Shinbashi")
        fareTable = FareTable.new
        fareTable.add(fare)
        assert_equal(140,fareTable.find_fare("Shinbashi","Tokyo"))
    end
    def test_find_fare_Shinagawa_Shinjuku_dup
        fare = Fare.new(200, "Shinagawa", "Shinjuku")
        fareTable = FareTable.new
        fareTable.add(fare)
        assert_equal(200,fareTable.find_fare("Shinagawa", "Shinjuku"))
        fare2 = Fare.new(100, "Shinagawa", "Shinjuku")
        fareTable.add(fare2)
        assert_equal(200,fareTable.find_fare("Shinagawa", "Shinjuku"))
    end
    def test_find_fare_all
        fare1 = Fare.new(200, "Shinagawa", "Shinjuku")
        fare2 = Fare.new(260, "Shinagawa", "Ikebukuro")
        fare3 = Fare.new(170, "Shinagawa", "Tokyo")
        fare4 = Fare.new(160, "Shinagawa", "Shinbashi")
        fare5 = Fare.new(160, "Shinjuku", "Ikebukuro")
        fare6 = Fare.new(200, "Shinjuku", "Tokyo")
        fare7 = Fare.new(200, "Shinjuku", "Shinbashi")
        fare8 = Fare.new(200, "Ikebukuro", "Tokyo")
        fare9 = Fare.new(200, "Ikebukuro", "Shinbashi")
        fare10 = Fare.new(140, "Tokyo", "Shinbashi")
        fareTable = FareTable.new
        fareTable.add(fare1)
        fareTable.add(fare2)
        fareTable.add(fare3)
        fareTable.add(fare4)
        fareTable.add(fare5)
        fareTable.add(fare6)
        fareTable.add(fare7)
        fareTable.add(fare8)
        fareTable.add(fare9)
        fareTable.add(fare10)
        assert_equal(160, fareTable.find_fare("Shinagawa","Shinbashi"))
        assert_equal(200, fareTable.find_fare("Tokyo","Shinjuku"))
        assert_raise RuntimeError do
        	Fare.new(0, "Ikebukuro", "Ikebukuro")
        end
    end
end
