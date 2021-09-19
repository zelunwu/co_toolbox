function co2_flux = co_co2flux(pco2_sea, pco2_air, sst, sss, wspd)

kt = co_gas_transfer_velocity(0.251,sst,wspd);
K0 = co_K0_Weiss(sst,sss);
dpco2 = pco2_sea - pco2_air;
co2_flux = kt .* K0 .* dpco2 * (24*365/100000);

end