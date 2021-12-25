function f = Godunov(ul, ur)
    fL = ul.^2 / 2;
    fR = ur.^2 / 2;
    fMin = 0;
    f = zeros(length(ul), 1);    
    f(ul > ur) = max(fL(ul > ur), fR(ul > ur));
    f(ul <= ur) = min(fL(ul <= ur), fR(ul <= ur));
    f(ul <= 0 & 0 < ur) = fMin;
end

