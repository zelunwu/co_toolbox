function K0 = co_K0_Weiss(sst,sss)
% pco2 = CO_XCO2TOPCO2(xco2, sst, sss)
% A function calculated the CO2 solubility with SST (C) and SSS(ppt)
% unit: mol/l/atm
% Algorithm: 
% 
% References:
% Weiss, R. F. (1974). Carbon dioxide in water and seawater: the solubility of a non-ideal gas. Marine Chemistry, 2(3), 203–215. https://doi.org/10.1016/0304-4203(74)90015-2
% 
% Author: 
% Zelun Wu
% Ph.D. student.
% University of Delaware & Xiamen University
% zelunwu@outlook.com
% zelunwu.github.io
%%


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
