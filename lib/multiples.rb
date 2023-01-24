def sum_of_3_or_5_multiples(final_number)
    final_number_array = []
    final_number.times do |current_number|
        if is_multiple_of_3_or_5?(current_number) == true
            final_number_array << current_number
        end
    end
    return final_number_array.sum
end


def is_multiple_of_3_or_5?(current_number)
    if current_number % 3 == 0 || current_number % 5 == 0
        return true
    else
        return false
    end
end