n = ARGV[0].to_i
if ARGV.length != 1
    puts "Please enter only one argument : a number"
    exit
elsif n == 0
    puts "Please enter a number" 
    exit
else
    for i in 1..n-1 do
        n*=i 
    end 
    puts n    
end


