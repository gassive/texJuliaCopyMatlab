y = rand(100);
plot(0:10:100, rand(11, 4), lab="lines", w=3, palette=:grays, fill=0, alpha=0.6);
scatter!(y, zcolor=abs.(y .- 0.5), m=(:heat, 0.8, Plots.stroke(1, :green)), ms=10 * abs.(y .- 0.5) .+ 4, lab="grad")