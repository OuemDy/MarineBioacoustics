function y = sonar_equation

% Olivia Marín 2020 October 10th
% Last update: 15/10/2020
% contact: olivia.marin.delgado95@gmail.com

% Using the sonar equation to calculate different parameters related to
% echolocation in dB. The detection range of a sonar system for a single 
% target is determined by the sound level emitted from the source, the
% transmission loss to and from the target, the backscattering properties
% of the target, and the echo to noise or clutter ratio required by the
% auditory system to detect the echo (Surlykke, 2014).
%
% This process is expressed in the sonar equation (Møhl 1988 ; Au 1993 ;
% Urick 1995), which in a simple form for a point target may be written
% on a decibel scale as EL = SL -2TL + TS, where:
%
%           EL = Echo level (dB), received back at the auditory system of
%                the echolocating animal.
%           SL = Source level (dB), defined as the sound level at a
%                standard range ahead of the animal on the acoustic axis.
%           TL = Transmission loss (dB), is the transmission loss between
%                the source and the target.
%           TS = Target strenght (dB), defined as the ratio between the
%                sound level impinging on the target and the echo level on
%                the same axis at a standard range back toward the source.
%
%
% References:
%
%       Møhl, B. (1988). Target detection by echolocating bats. In Animal 
% sonar pp. 435-450). Springer, Boston, MA.
%       Surlykke, A. (2014. The Physical Framework of Operating Biosonars 
% in Air and Water. In Biosonar (pp. 259-294). Springer, New York, NY.
%       Au, W. W. (1993). The sonar of dolphins. Springer Science & 
% Business Media.
%       Urick, R. J. (1995). Principles of underwater sound , 3rd ed. Los 
% Altos Hills: Peninsula Publishing.


fprintf("\nEL = Echo level\n")
fprintf("SL = Source level\n")
fprintf("TL = One-way transmission loss\n")
fprintf("2TL = Two-ways transmission loss\n")
fprintf("TS = Target strenght\n");
sonar_variable = input("\nWhat do you want to calculate?\n",'s');
sonar_variable = upper(sonar_variable);

if sonar_variable == "EL"
    SL = input("Introduce SL in dB\n");
    TL = input("Introduce TL in dB\n");
    TS = input("Introduce TS in dB\n");
    y = SL - 2*TL + TS;
    
elseif sonar_variable == "SL"
    EL = input("Introduce EL in dB\n");
    TL = input("Introduce TL in dB\n");
    TS = input("Introduce TS in dB\n");
    y = EL + 2*TL - TS;
    
elseif sonar_variable == "TL"
    EL = input("Introduce EL in dB\n");
    SL = input("Introduce SL in dB\n");
    TS = input("Introduce TS in dB\n");
    y = (SL - EL - TS)/2;
    
elseif sonar_variable == "2TL"
    EL = input("Introduce EL in dB\n");
    SL = input("Introduce SL in dB\n");
    TS = input("Introduce TS in dB\n");
    y = SL - EL - TS;
    
elseif sonar_variable == "TS"
    EL = input("Introduce EL in dB\n");
    SL = input("Introduce SL in dB\n");
    TL = input("Introduce TL in dB\n");
    y = - EL -SL + 2*TL ;
    
else
    fprintf("\nError: Not valid input\n")
    
end

end