function fastPow2(x::Float64)
    c =[ 0.09335915850659268, 0.2043376277254389, 0.7019754011048444, 1.00020947 ];
    return ((c[1]*x+c[2])*x +c[3])*x+c[4]
end

function fastLog(x::Float64)
    c =[ 1.33755322, -4.42852392, 6.30371424, -3.21430967 ];
    return ((c[1]*x+c[2])*x +c[3])*x+c[4]
end

using Plots
plot(log2, xlim = [0.25,1.5], label = "excact log2", dpi = 200)
plot!(fastLog, xlim = [0.25,1.5], label = "polynomial approximation of degree 3 ")
savefig("log2.png")


pow2 = x -> 2^x
plot(pow2, xlim = [-1,3], label = "excact pow2", dpi = 200)
plot!(fastPow2, xlim = [-1,3], label="polynomial approximation of degree 3")
savefig("pow2.png")
