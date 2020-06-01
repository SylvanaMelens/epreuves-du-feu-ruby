if ARGV.length != 1
    puts "Plese enter only one argument : a sentence with single or double quotes"
elsif ARGV[0].to_i == 0
    my_sentence = ARGV[0].split('')
    i = 0
    while (i < my_sentence.length)
        if (i % 2 != 0)
            print my_sentence[i].upcase
        else
            print my_sentence[i].downcase
        end
    i += 1
    end
    puts 
else 
    puts "Please enter a string"
end
