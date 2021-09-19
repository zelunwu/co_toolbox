function kt = co_gas_transfer_velocity(c,sst,wspd)
% kt = co_gas_transfer_velocity(c,sst,wspd)
% calculate the gas transfer velocity from sst, sss, and wind speed
%
% Algorithm: 
% kt = c * wpsd^2 * (Sc/660)^-0.5 
% Sc is the Schmit numer, which is a function of SST: 
% Sc = A + B*(sst) + C*(sst.^2) + D*(sst.^3) + E*(sst.^4);
% 
% References:
% Wanninkhof, R. (2014). Relationship between wind speed and gas exchange over the ocean revisited. Limnology and Oceanography: Methods, 12(6), 351–362. https://doi.org/10.4319/lom.2014.12.351
% 
% Author: 
% Zelun Wu
% Ph.D. student.
% University of Delaware & Xiamen University
% zelunwu@outlook.com
% zelunwu.github.io
%%
A = 2116.8; B = -136.25; C = 4.7353; D = -0.092307; E = 0.0007555;
Sc = A + B*(sst) + C*(sst.^2) + D*(sst.^3) + E*(sst.^4); % Jähne et al. (1987), Wanninkhof 2014
kt = c * wspd.^2 .*((Sc/660).^(-0.5)); % unit: cm/hour
end