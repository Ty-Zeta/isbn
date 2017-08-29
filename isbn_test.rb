require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn < Minitest::Test

    def test_1_equals_1
        assert_equal(1,1)
    end

    def test_length_10
        check1 = "1234567890"
        assert_equal(10, check1.length)
    end

    def test_length_13
        check2 = "1234567890123"
        assert_equal(13, check2.length)
    end

    def test_length_10_v2
        check3 = "123456789-0"
        check3 = check3.gsub(/-/, '')
        assert_equal(10, check3.length)
    end

end