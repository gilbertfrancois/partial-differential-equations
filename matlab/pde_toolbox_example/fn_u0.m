function u0 = fn_u0( location )
    u0(1,:) = exp(-16*(location.x-1.5).^2-16*(location.y-1.5).^2);
end

