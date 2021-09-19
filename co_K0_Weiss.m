function K0 = co_K0_Weiss(sst,sss)
% calculate the CO2 solubility with SST (C) and SSS(ppt)
% Ref: Weiss, 1976
% unit: mol/l/atm
sst = sst + 273.15; % transfer to Kelvin degree
A1 =-58.0931; 
A2 = 90.5069; 
A3 = 22.294; 
B1 = 0.027766; 
B2 = -0.025888; 
B3 = 0.0050578;
ln_K0 = A1 + A2.*(100./sst) + A3 *log(sst/100) + ...
    sss.* (B1+ B2*(sst/100)+ B3*(sst/100).^2);
K0 = exp(ln_K0);

end
