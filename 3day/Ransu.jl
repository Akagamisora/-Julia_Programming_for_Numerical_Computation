# function Ransu(N)
#     xn=0:0.01:1
#     yn=sqrt.(1-xn.^2)
#     plot(xn,yn,
#     label=nothing,
#     aspect_ration=:equal,
#     xlims=(0,1),
#     ylims=(0,1)
#     )
#     xin=[]
#     xout=[]
#     yin=[]
#     yout=[]
#     for n=1:N
#         x=rand()
#         y=rand()
#         r=x^2+y^2
#         if r>1
#             push!(xout,x)
#             push!(yout,y)
#         else
#             push!(xin,x)
#             push!(uin,y)
#         end
#     end
#     plot!(xin,yin,
#         label="inside",
#         seriestype=:scatter,
#         makercolor=:blue)
#     plot!(xout,yout,
#         label="outside",
#         seriestype=:scatter,
#         makercolor=:yellow)
#     savefig("random.png")
#     return length(xin)/N
# end

# N=10000
# Ransu(N)

using Plots

function Ransu(N)
    xn = 0:0.01:1
    yn = sqrt.(1 .- xn.^2)
    plot(xn,yn,label=nothing,aspect_ratio=:equal,xlims=(0,1),ylims=(0,1))
    xin = []
    xout = []
    yin = []
    yout = []
    for n=1:N
        x = rand()
        y = rand()
        r = x^2+y^2
        if r >1
            push!(xout,x)
            push!(yout,y)
        else
            push!(xin,x)
            push!(yin,y)
        end
    end
    plot!(xin,yin,label="inside",seriestype = :scatter,markercolor=:blue)
    plot!(xout,yout,label="outside",seriestype = :scatter,markercolor=:yellow)
    savefig("random.png")
    return length(xin)/N
end
N= 1000
Ransu(N)
