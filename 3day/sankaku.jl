function sankaku()
    c=BigFloat(sqrt(2)/2) #cos(45)の値
    hankakucos(c)=sqrt((1+c)/2) #半角の公式によるcosの計算
    n=10 #正8^n角形までを考慮する
    # n=30
    N=8

    for i=1:n
        c=hankakucos(c)
        N=N*2
        l=sqrt(2-2*c)
        # println("正$(8N)角形の場合：",N*l/2)
        println("正$(8N)角形の場合：",N*l/2,"\t",abs(π-N*l/2)/π)
    end
end
sankaku()