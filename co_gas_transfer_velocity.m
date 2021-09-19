function kt = co_gas_transfer_velocity(c,sst,wspd)

A = 2116.8; B = -136.25; C = 4.7353; D = -0.092307; E = 0.0007555;
Sc = A + B*(sst) + C*(sst.^2) + D*(sst.^3) + E*(sst.^4); % Jähne et al. (1987), Wanninkhof 2014
kt = c * wspd.^2 .*((Sc/660).^(-0.5)); % unit: cm/hour
end