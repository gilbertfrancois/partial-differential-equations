function f = fn_fxy( location, state )
    f(1,:) = -sin(location.x) .* cos(location.y);
end

