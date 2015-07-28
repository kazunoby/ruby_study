require_relative 'fare'

# Hash版
class FareTable
    def initialize
        @fares = {}
    end
    def add(fare)
    	# 既にキー登録されていたら何もしない（先勝ち）
    	if !@fares.has_key?(fare.key) then
            @fares[fare.key] = fare
        end
    end
    def find_fare(dept, dest)
    	keyStr = create_key(dept, dest)
    	fareFind = @fares[keyStr]
    	return fareFind.fare
    end
end
