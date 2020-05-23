clc;
clear;
syms 'f' 'n' 'w0';
a=2;

display('Z-Transform of unit step signal');
f=n/n;
step_z=ztrans(f)

display('Z-Transform of ramp signal');
f=n;
ramp_z=ztrans(f)

display('Z-Transform of exponential signal');
f=a^n;
exp_z=ztrans(f)

display('Z-Transform of cosw0n signal');
f=cos(n*w0);
cos_z=ztrans(f)

display('Z-Transform of sinw0n signal');
f=sin(n*w0);
sin_z=ztrans(f)

display('Z-Transform of a^n *sinw0n signal');
f=(a^n) * sin(n*w0);
expsin_z=ztrans(f)

display('Z-Transform of a^n *cosw0n signal');
f=(a^n) * cos(n*w0);
expcos_z=ztrans(f)


display('Inverse Z-Transform of unit step signal');
iztrans(step_z)

display('Inverse Z-Transform of ramp signal');
iztrans(ramp_z)

display('Inverse Z-Transform of exponential signal');
iztrans(exp_z)

display('Inverse Z-Transform of cosw0n signal');
iztrans(cos_z)

display('Inverse Z-Transform of sinw0n signal');
iztrans(sin_z)

display('Inverse Z-Transform of exponential * sin signal');
iztrans(expsin_z)

display('Inverse Z-Transform of exponential * cos signal');
iztrans(expcos_z)

