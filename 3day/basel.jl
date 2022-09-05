function Basel(nc)
    a=0
    for n=1:nc
        a+=1/n^2
    end
    return sqrt(6a)
end

# function test()
#     ncs=[1,10,100,1000,10000]
#     for nc in ncs
#         b=Basel(nc)
#         println("バーゼル級数和(nc=$nc):",b,"\t",abs(π-b)/π)
#     end
# end
# test()

function test()
    ncs=[10^n for n=0:9]
    bs=[]
    for nc in ncs
        b=Basel(nc)
        push!(bs,abs(π-b)/π)
    end
    println(bs)
    return ncs,bs
end
ncs,bs=test()

using Plots
plot(ncs,bs,
    xscale=:log10, 
    yscale=:log10,
    markershape=:circle,
    label="Basel",
    xlabel="cut off num",
    ylabel="relative error")
savefig("basellog.pdf")