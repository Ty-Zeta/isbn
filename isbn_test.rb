require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn < Minitest::Test

    def test_1_equals_1
        assert_equal(1,1)
    end

    def test_emptyness
        ea = []
        assert_equal(ea, empty_array)
    end

    def test_length_10
        assert_equal(true, isbn_length("1234567890"))
    end

    def test_length_13
        assert_equal(true, isbn_length("1234567890123"))
    end

    def test_10_dash
        assert_equal(true, isbn_dash("1-234-56789-0"))
    end

    def test_13_dash
        assert_equal(true, isbn_dash("978-0-13-149505-0"))
    end


end








#     def test_length_10
#         check1 = "1234567890"
#         assert_equal(10, check1.length)
#     end

#     def test_length_13
#         check2 = "1234567890123"
#         assert_equal(13, check2.length)
#     end

#     def test_length_10_v2
#         check3 = "123456789-0"
#         check3 = check3.gsub(/-/, '')
#         assert_equal(10, check3.length)
#     end

#     def test_length_13_v2
#         check4 = "123456789012-3"
#         check4 = check4.gsub(/-/, '')
#         assert_equal(13, check4.length)
#     end

#     def test_space_dash
#         check5 = "123456789 0-123"
#         check5 = check5.gsub(/[ -]/, '')
#         assert_equal(13, check5.length)
#     end

# end