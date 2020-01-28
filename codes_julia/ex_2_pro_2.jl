using GR
using SpecialFunctions
x = collect(0:0.01:20)
legend("0 order", "1 order", "2 order", "3 order")
title("Bessel function")
title("Bessel function")
xlim([0, 20])
ylim([-1, 1])
plot(x, SpecialFunctions.besselj.(0, x),
     x, SpecialFunctions.besselj.(1, x),
     x, SpecialFunctions.besselj.(2, x),
     x, SpecialFunctions.besselj.(3, x))
