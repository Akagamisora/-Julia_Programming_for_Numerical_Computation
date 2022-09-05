# 4.2.1

using SpecialFunctions
using Plots

function test()
    N=100
    xs=range(0,10,length=N)
    for n=0:3
        Jn=besselj.(n,xs)
        Yn=bessely.(n,xs)
        plot!(xs,Jn,label="J$n(x)",ylims=(-1,1))
        plot!(xs,Yn,label="Y$n(x)",ylims=(-1,1))
    end
    savefig("JY.png")
end
test()

plot()

using FunctionZeros
besselj_zero.(0, 1:5)

function test2()
    R=10
    N=100
    Nene=5
    n=0
    Es=besselj_zero.(n, 1:Nene).^2/R^2 #E=α^2/R^2
    xs=range(0,10,length=N)
    for (i,E) in enumerate(Es)
        J0=besselj.(0,xs*sqrt(E))
        plot!(xs,J0,label="$i-th eigenvalue",ylims=(-1,1))
    end
    savefig("J0.png")
end
test2()