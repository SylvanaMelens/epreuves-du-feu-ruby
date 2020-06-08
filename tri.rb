if (ARGV.length <= 1)
    puts "Please enter at least 2 arguments to sort : #{__FILE__} [array_of_numbers_to_sort]"
    exit
end


len = ARGV.length()
arr = ARGV

flag = true


while (flag)
    flag = false
    i = 0 
    while (i < len -1) 
        if (arr[i] < arr[i + 1])
            temp = arr[i]
            arr[i] = arr[i + 1]
            arr[i + 1] = temp
            flag = true
        end
        i += 1
    end
end

puts arr.join(' ')




