using Test, ExampleTrapez

function test1()
    a = -1
    b = 2
    N = 1000
    f(x) = x*exp(x)
    return trapez(f,a,b,N)
end
result1 = (2+ℯ^3)/ℯ

@test round(result1, digits = 4) ≈ round(test1(), digits = 4)

function test2()
    f(x) = cos(200*x)
    a = 0
    b = 1
    N = 10000
    return trapez(f,a,b,N)
end

result2 = sin(200)/200

@test round(result2, digits = 4) ≈ round(test2(), digits = 4)
