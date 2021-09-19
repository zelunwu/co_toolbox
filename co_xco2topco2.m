function pco2 = co_xco2topco2(xco2, sst, sss)
% pco2 = CO_XCO2TOPCO2(xco2, sst, sss)
% A function converted atmospheric mole fraction of CO2 (xCO2) to atmospheric pCO2
% 
% Algorithm: 
% fco2 = xco2 * (1-pw);
% pw = exp()...
% 
% References:
% 
% 
% Author: 
% Zelun Wu
% Ph.D. student.
% University of Delaware & Xiamen University
% zelunwu@outlook.com
% zelunwu.github.io
%%

C1 = 24.4543;
C2 = -67.4509*(100/(sst+273.15));
C3 = -4.8489*log((sst+273.15)/100);
C4 = - 0.000544*sss;
pw = exp(C1 + C2 + C3 + C4);
pco2 = xco2.*(1-pw);


end