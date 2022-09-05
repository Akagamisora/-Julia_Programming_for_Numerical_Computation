function Kubun(N,x0,x1,f)
    dx=(x1-x0)/N
    a=0.0
    xn=range(x0,step=dx, length=N)
    for x in xn
        a+=f(x)
    end
    return a*dx
end

f(x)=4/(1+x^2)
n=10000
p=Kubun(n,0,1,f)
println(p)