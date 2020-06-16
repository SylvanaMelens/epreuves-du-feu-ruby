if ARGV.length != 2
    puts "Plese enter two arguments : two files"
end


#fonction de récupération du .txt et pour affichage en array
def txt_to_array(txt)
index = 0
arr = []
    File.foreach(txt) do |line|
        arr[index] = line.chomp.split('').map(&:to_i)
        index += 1   
    
    end
    return arr
end

c1 = txt_to_array(ARGV[0])
c2 = txt_to_array(ARGV[1])

#puts c1.inspect
#puts c2.inspect

#line
l = 0
#number
n = 0

while (l < c2.length)
    l += 1
    while (n < c2[0].length)
        if (c1[l][n] == c2[l][n])
            if 
                (c1[l+1][n] == c2[l+1][n])
                if
                    (c1[l+1][n] == c2[l+1][n])
                    puts "#{n},#{l}"
                else
                    puts "no result"
                end
            end
        end
        n += 1
    end
end