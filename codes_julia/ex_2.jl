# my first julia file
# - coded by Liang Zheng
# - 2020-01-25

# plot f(x,y)
using Plots;
x=[0:50];
x=convert(Array{Float32},x[1]);
y1=sin.(x);
y2=cos.(x);
y=[y1,y2];
plot(x,y1,label="sin");
plot!(x,y2,line=:dash,label="cos");
scatter!(x,y2,label="");
title!("my first Julia plot");
ylabel!("y");
xlabel!("x");
