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
        assert_equal(true, isbn_dashx("1-234-56789-0"))
    end

    def test_10_space
        assert_equal(true, isbn_dashx("1 234- 56789-0"))
    end

    def test_13_dash
        assert_equal(true, isbn_dashx("978-0-13-149505-0"))
    end

    def test_10_x
        assert_equal(true, isbn_dashx("877195869x"))
    end

    def test_check_sumx
        assert_equal(true, check_sum("877195869x"))
    end

    def test_check_sum0
        assert_equal(true, check_sum("0-321-14653-0"))
    end

    def test_fail
        assert_equal(false, check_sum("1234567894"))
    end
end