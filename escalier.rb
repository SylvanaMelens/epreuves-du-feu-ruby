if ARGV.length != 1
    puts "Please enter only one number of steps"
    exit
end

def upstairs(steps)
    hash = 0
    space = steps
    if steps == 0
        puts "Please enter a min number of steps" 
    else
        steps.times {
            hash +=1
            space -=1
            puts " " * space + "#" * hash 
        }
    end
end

upstairs(ARGV[0].to_i)
