% Bode plots (magnitude and phase) for the standard second order system G(s) with ζ varying from 0.1 to 1.5 in the steps of 0.2 (w_n = 10 rad/s)

i = 0;                                              % i is initialized as zero
s = %s;                                             % predefined value in Scilab
for zt = 0.1 : 0.2 : 1.5                            % here zt represents ζ or damping ratio of the system
 > i = i + 1;                                       % increments i by 1 in the for range
 > g(i,1) = syslin('c', 100, s^2 + 2*zt*s + 100);   % standard plot
 > end                                              % marks the end of for loop
bode(g, 0.01, 10.0, 'rad')                          % plot with w_n = 10 rad/s
