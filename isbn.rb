check1 ="1234567890"

check2 = "1234567890123"

check3 = "123456789-0"

check4 = "123456789012-3"

check5 = "123456789 0-123"

def checking1
    check1_sum = 1*1, 2*2, 3*3, 4*4, 5*5, 6*6, 7*7, 8*8, 9*9
    check1_sum = 1 + 4 + 9 + 16 + 25 + 36 + 49 + 64 + 81
    check1_sum = 285 % 11
        if check1_sum == 10
            p "true"
        else
            p "false"
        end
    end
checking1