require 'test/unit'

class TestCalc < Test::Unit::TestCase
	# ２つの数字がゼロ
    def test_both_zero() 
        assert_equal(0, add(0, 0))
    end 
    # １つ目の数字がゼロ
    def test_first_zero() 
        assert_equal(3, add(0, 3))
    end
    # ２つ目の数字がゼロ
    def test_second_zero() 
        assert_equal(2, add(2, 0))
    end
    # どちらもゼロでない
    def test_both_not_zero()
        assert_equal(5, add(2, 3)) 
    end

    # テスト対象のメソッド
    def add(first, second)
        first + second
    end
end