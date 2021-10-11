x = 0
y = 1

for i in 1..20 do 
    z = x + y          
    x = y
    y = z
    puts z      
end