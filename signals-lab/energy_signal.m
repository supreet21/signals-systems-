function xe=energy_signal(fun,lower,upper)
    fun2 = @(x) mpower(x,2);
    xe = integral(fun2(fun), lower, upper)
end
