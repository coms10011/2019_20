
function gaussian(x::Float64)
    1/sqrt(2*pi)*exp(-x^2/2)
end

function make_uniform(lower::Float64,upper::Float64)
    function uniform(x::Float64)
        if x>lower && x<upper
            return 1.0/(upper-lower)          
        end
        return 0.0
    end
end

n_conv=12::Int64

dx=0.001::Float64

limits=sqrt(3/n_conv)

uniform=make_uniform(-limits,limits)

uniform_v=[uniform(x) for x in -limits:dx:limits]

new_v=uniform_v

for i in 1:n_conv
    new_v=[dx*x for x in conv(new_v,uniform_v)]
end

xs=collect(-(n_conv+1)*limits:dx:(n_conv+1)*limits)

total=0.0::Float64
for i in 1:length(new_v)
    total+=new_v[i]*dx
#    println(xs[i]," ",new_v[i]," ",gaussian(xs[i]))
end

println(total)
