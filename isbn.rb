def empty_array
    []
end

def isbn_length(isbn)
    if isbn.length == 10
        true
    elsif isbn.length == 13
        true
    else
        false
    end
end 






















# check1 ="1234567890"

# check2 = "1234567890123"

# check3 = "123456789-0"

# check4 = "123456789012-3"

# check5 = "123456789 0-123"

# # def checking1
# #     check1_sum = 1*1, 2*2, 3*3, 4*4, 5*5, 6*6, 7*7, 8*8, 9*9
# #     check1_sum = 1 + 4 + 9 + 16 + 25 + 36 + 49 + 64 + 81
# #     check1_sum = 285 % 11
# #         if check1_sum == 10
# #             p "true"
# #         else
# #             p "false"
# #         end
# #     end
# # checking1

# def checking2
#     x = 10
#     isbn = isbn.gsub(/[ -abcdefghijklmnopqrstuvwyz]/, '')
#     isbn = isbn.split(//)
#     checksum = isbn.pop
#     p checksum
#     check = 1 * isbn[0].to_i + 2 * isbn[1].to_i + 3 * isbn[2].to_i + 4 * isbn[3].to_i + 5 * isbn[4].to_i + 6 * isbn[5].to_i + 7 * isbn[6].to_i + 8 * isbn[7].to_i + 9 * isbn[8].to_i
#     sum = check % 11
#         if sum == x
#             p "VALID"
#         else
#             p "INVALID"
#         end
# end

# def checking3
#     x = 10
#     isbn = isbn.gsub(/[ -abcdefghijklmnopqrstuvwyz]/, '')
#     isbn = isbn.split(//)
#     checksum = isbn.pop
#     p checksum
#     check = 1 * isbn[0].to_i + 3 * isbn[1].to_i + 1 * isbn[2].to_i + 3 * isbn[3].to_i + 1 * isbn[4].to_i + 3 * isbn[5].to_i + 1 * isbn[6].to_i + 3 * isbn[7].to_i + 1 * isbn[8].to_i + 3 * isbn[9] + 1 * isbn[10] + 3 * isbn[11]
#     sum = check % 11
#         if sum == x
#             p "VALID"
#         else
#             p "INVALID"
#         end
# end

# def verify
#     isbn = "1234567890"
#     isbn = isbn.gsub(/[ -abcdefghijklmnopqrstuvwyz]/, '')
#         if isbn.length == 10
#             checking2
#         elsif isbn.length == 13
#             checking3
#         end
# end
# verify