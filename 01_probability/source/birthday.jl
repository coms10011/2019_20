
function probability(n::Int64)

    p_none=1.0::Float64

    for i in 1:n
        p_none=p_none*((365+1-i)/365.0)
    end
    
    1-p_none

end

n=1

while n<60
    println(n," ",probability(n))
    global n+=1
end
