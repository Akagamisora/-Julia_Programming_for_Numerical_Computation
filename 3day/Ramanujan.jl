function Ramanujan(nc)
    a=0
    for n=0:nc
        n=big(n)
        a+=factorial(4n)*(1103+26390n)/(4^n*99^n*factorial(n))^4
    end
    return 99^2/(2*sqrt(big(2))*a)
end

r=Ramanujan(4)
println(r,"\t",abs(π-r)/π)