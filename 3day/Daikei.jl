function Daikei(N,x0,x1,f)
    dx=(x1-x0)/N
    a=(f(x0+f(x1)))/2
    xn=range(x0,step=dx,length=N)
    for n=2:N
        x=xn[n]
        a+=f(x)
    end
    return a*dx
end

# function Kubun(N,x0,x1,f)
#     dx=(x1-x0)/N
#     a=0.0
#     xn=range(x0,step=dx, length=N)
#     for x in xn
#         a+=f(x)
#     end
#     return a*dx
# end

f(x)=4/(1+x^2)
n=10000
p=Daikei(n,0,1,f)
# q=Kubun(n,0,1,f)
# println((π-p)/(π-q))
println(p)