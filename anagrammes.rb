if ARGV.length != 2
    puts "Plese enter only two arguments : a word and a file"
end


#récupérer fichier .txt et l'afficher sous forme de tableau
index = 0
txt = []
File.foreach(ARGV[1]) do |line|
    txt[index] = line.chomp
    index += 1   
end

word = ARGV[0].split('').sort.join('')

#itérer sur le txt
i = 0
result = []

while (i < txt.length())
    if (txt[i].split('').sort.join('') == word)
        result.push txt[i]
    end
    i += 1
end

print result
