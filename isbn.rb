# require 'csv'

# isbn_file = CSV.read('input_isbn_file.csv')

# CSV.parse('input_isbn_file.csv') do |row|
#     puts row.inspect
# end

def isbn_function(user_given_isbn)
    no_space_or_dash_isbn = user_given_isbn.delete(' -')

    answer_array = []

    if no_space_or_dash_isbn !~ /\D/
        
        if no_space_or_dash_isbn.length == 10
            isbn_array = no_space_or_dash_isbn.split('')
            last_digit = isbn_array.pop
            
            isbn_array.each_with_index do |value, index_position|
                sum = (index_position.to_i + 1) * value.to_i
                answer_array << sum
            end

            sum_answer_array = answer_array.inject(0, :+)
            mod_answer_array = sum_answer_array % 11

                if mod_answer_array == last_digit.to_i
                    return_variable = true
            
                else
                    return_variable = false
                end

        elsif no_space_or_dash_isbn.length == 13
            isbn_array = no_space_or_dash_isbn.split('')
            last_digit = isbn_array.pop
            
            isbn_array.each_with_index do |value, index_position|
                if index_position.to_i % 2 == 0
                    sum = value.to_i * 1
                    answer_array << sum
                
                else
                    sum = value.to_i * 3
                    answer_array << sum
                end
            end

            sum_answer_array = answer_array.inject(0, :+)
            mod_answer_array = (10 - (sum_answer_array % 10)) % 10
                if mod_answer_array == last_digit.to_i
                    return_variable = true
                
                else
                    return_variable = false
                end

        else
            return_variable = false
        end

    elsif no_space_or_dash_isbn.chop !~ /\D/
        if no_space_or_dash_isbn == 10
            isbn_array = no_space_or_dash_isbn.split('')
            last_digit = isbn_array.pop
            
            isbn_array.each_with_index do |value, index|
            sum = ((index_position.to_i + 1) * value.to_i)
            answer_array << sum
        end

        sum_answer_array = answer_array.inject(0, :+)
        mod_answer_array = sum_answer_array % 11

        if mod_answer_array <= 9
            mod_answer_array   
        
        elsif mod_answer_array == 10
            mod_answer_array = "x"
        
        else
            return_variable = false
        end

        if mod_answer_array == last_digit.downcase
            return_variable = true
        
        else
            return_variable = false
        end
    
    elsif no_space_or_dash_isbn.length == 13
        isbn_array = no_space_or_dash_isbn.split('')
        last_digit = isbn_array.pop
        
        isbn_array.each_with_index do |value, index_position|
            if index_position.to_i % 2 == 0
                sum = value.to_i * 1
                answer_array << sum
            
            else
                sum = value.to_i * 3
                answer_array << sum
            end
        end

        sum_answer_array = answer_array.inject(0, :+)
        mod_answer_array = (10 - (sum % 10)) % 10
            if mod_answer_array == last_digit.to_i
                return_variable = true
            
            else
                return_variable = false
            end

        else
            return_variable = false
        end
    
    else
        return_variable = false
    end
    
    return_variable
end