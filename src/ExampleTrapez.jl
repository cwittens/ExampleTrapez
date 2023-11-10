module ExampleTrapez
export trapez
"""
hier kommt noch was ;)
"""
function trapez(f,a,b,N)


    Δx = (b-a)/N
    x = []
    for i in 1:N+1
        push!(x,a+Δx*(i-1))
    end

    res = 0
    for k in 1:N
        res += (f(x[k]) + f(x[k+1])) / 2 * Δx
    end

    return res
end


end # module ExampleTrapez
