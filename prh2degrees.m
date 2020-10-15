function y = prh2degrees(prh)

% Olivia Marín 2020 Oct 15
% Last Updated: 15/10/2020
% contact: olivia.marin.delgado95@gmail.com

% Check if roll and pitch data (for example) are in degrees or in radians
% and if they are radians, the function swith them to degrees. Then plot
% the vector to check your results.

% WARNING: You can make this function work on any data but to better results, make sure to get the propper PRH file using the correct
% DTAG toolbox by Mark Johnson (https://www.soundtags.org/).

if prh < 2*pi & prh > -2*pi % Check condition to radians
    y = prh *180/pi;
    display('Variable is now in degrees')
else % Check condition to degrees
    y = prh;
    display('Variable was already in degrees')
    
end

plot(y)
ylabel('PRH Angle (degrees)')
ylim([-360,360])

end