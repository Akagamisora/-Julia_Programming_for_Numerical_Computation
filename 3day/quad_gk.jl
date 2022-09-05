using QuadGK
f(x)=4/(1+x^2)
result=quadgk(f,0,1)
println(result[1],"\t erroe: ",result[2])