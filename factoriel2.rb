n = ARGV[0].to_i
if ARGV.length != 1
    puts "Please enter only one argument : a positive number"
    exit
elsif n <= 0
    puts "Please enter a positive number" 
    exit
else
    i = 0
    result = 1
    n.times {
        i += 1
        result *= i
    }
    if (result.to_s.length > 3)
        # we want coma's on the 3 last numbers so first stringify and reverse
        result = result.to_s.reverse
        
        j = 0
        char = ''
        while (j < result.length)
            char += result[j]
            
            if ((j+1) % 3 == 0)
                char += ','
            end
            j += 1
        end
    result = char.reverse
    end
    puts result
end

