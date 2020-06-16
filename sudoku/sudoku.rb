if ARGV.length != 1
    puts "Plese enter a file name as argument"
end



index = 0
sudoku = []
        
File.foreach(ARGV[0]) do |line|
    sudoku[index] = line.chomp.split('')
    index += 1   
end

def print_sudoku(sudoku)
    i = 0
    while (i < sudoku.count)
        j = 0
        while (j < sudoku[i].count)
            print sudoku[i][j]
            j += 1
        end
        print "\n"
        i += 1
    end
end

def init_array()
    new_array = []
    value = 1
    while (value < 10)
        new_array[value] = 0
        value += 1
    end
    return (new_array)
end

#print init_array()

def check_line(sudoku, i)
    array = init_array()
    j = 0
    while (j < sudoku[i].count)
        value = sudoku[i][j].to_i
        if (value > 0 && value < 10)
            array[value] += 1
            if (array[value] > 1)
                return (false)
            end
        end
        j += 1
    end
    return (true)
end

def check_column(sudoku, j)
    array = init_array()
    i = 0
    while (i < sudoku.count)
        value = sudoku[i][j].to_i
        if (value > 0 && value < 10)
            array[value] += 1
            if (array[value] > 1)
                return (false)
            end
        end
        i += 1
    end
    return (true)
end

def check_square(sudoku, i, j)
    array = init_array()
    x = (i / 4) * 4
    y = (j / 4) * 4
    i = 0
    while (i < x + 3)
        while (j < y + 3)
            value = sudoku[i][j].to_i
            if (value > 0 && value < 10)
                array[value] += 1
                if (array[value] > 1)
                    return (false)
                end
            end
            j += 1
        end
        i += 1
    end
    return (true)
end

def resolve(sudoku)
    i = 0
    while (i < sudoku.count)
        j = 0
        while (j < sudoku[i].count)
            if (sudoku[i][j] == '_')
                n = 1
                while (n < 10)
                    sudoku[i][j] = n
                    if (check_line(sudoku, i) && check_column(sudoku, j) && check_square(sudoku, i, j))
                        sudoku = resolve(sudoku.map(&:clone))
                        if (sudoku != false)
                            return (sudoku)
                        end
                    end
                    n += 1
                end
                return (false)
            end
            j += 1
        end
        i += 1
    end
    return (sudoku)
end


def check_sudoku(sudoku)
    sudoku = resolve(sudoku)
    if (sudoku == false)
        print "Error."
    else 
        print_sudoku(sudoku)
    end
end

check_sudoku(sudoku)
