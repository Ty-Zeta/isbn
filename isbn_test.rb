require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn < Minitest::Test

    def test_1_equals_1
        assert_equal(1,1)
    end

    def test_10
        assert_equal(true, isbn_function("0471958697"))
    end

    def test_10_dash
        assert_equal(true, isbn_function("0-321-14653-0"))
    end

    def test_10_x
        assert_equal(true, isbn_function("877195869x"))
    end

    def test_13
        assert_equal(true, isbn_function("9780470059029"))
    end

    def test_13_dash
        assert_equal(true, isbn_function("978-0-13-149505-0"))
    end

    def test_13_space
        assert_equal(true, isbn_function("978 0 471 48648 0"))
    end

    def test_13_wrong
        assert_equal(false, isbn_function("4780470059029"))
    end

    def test_13_wrong_symbols
        assert_equal(false, isbn_function("9780470059029!"))
    end
end


    # def test_emptyness
    #     ea = []
    #     assert_equal(ea, empty_array)
    # end

    # def test_length_10
    #     assert_equal(true, isbn_function("123456789x"))
    # end

    # def test_length_13
    #     assert_equal(true, isbn_function("1234567890123"))
    # end

    # def test_10_dash
    #     assert_equal(true, isbn_function("1-234-56789-x"))
    # end

    # def test_10_space
    #     assert_equal(true, isbn_function("1 234- 56789-x"))
    # end

    # def test_13_dash
    #     assert_equal(true, isbn_function("978-0-13-149505-0"))
    # end

    # def test_10_x
    #     assert_equal(true, isbn_function("877195869x"))
    # end

    # def test_check_sumx
    #     assert_equal(true, isbn_function("877195869x"))
    # end

    # def test_check_sum0
    #     assert_equal(true, isbn_function("0-321-14653-0"))
    # end

    # def test_fail
    #     assert_equal(false, isbn_function("1234567894"))
    # end

    # def test_check_13_sum
    #     assert_equal(true, isbn_function("9780470059029"))
    # end