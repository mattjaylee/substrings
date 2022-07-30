def substrings(string, dictionary)
    substring_hash = {}
    separated_strings = string.split(/[^[[:word:]]]+/)
    separated_strings.each do |sep_string|
        string_input_array = sep_string.downcase.split('')
        string_input_array.each_with_index do |source_char, source_index|
            for word in dictionary do
                running_index = source_index
                dict_word_array = word.split('')
                dict_word_array.each_with_index do |dict_char, dict_index|
                    if dict_word_array.length - 1 == dict_index && dict_word_array[dict_index] == string_input_array[running_index]
                        substring_hash.has_key?(word) ? substring_hash[word] += 1 : substring_hash[word] = 1
                    elsif dict_word_array[dict_index] == string_input_array[running_index]
                        running_index += 1
                    else break
                    end
                end
            end
        end
    end
    puts substring_hash
end
