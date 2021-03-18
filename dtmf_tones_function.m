function dtmfgen (key)
%sampling frequency
fs=8000;
%time vector(since fs is 8000, it will take 0.5 seconds to move from 0 to
%4000)
t=0:1:4000;
%for generating low frequency group
y697=sin(2*pi*(697/fs).*t); 
y770=sin(2*pi*(770/fs).*t);
y852=sin(2*pi*(852/fs).*t);
y941=sin(2*pi*(941/fs).*t);
%for genertaing high frequency group
y1209=sin(2*pi*(1209/fs).*t);
y1336=sin(2*pi*(1336/fs).*t);
y1477=sin(2*pi*(1477/fs).*t);

%omitted the last column-A,B,C,D
%implementation of first 12 keys only
if key=='1'
    y1=y697+y1209;
    sound(y1,fs);%fucntion to produce sound by adding corrosponding sound waves
elseif key=='2'
    y2=y697+y1336;
    sound(y2,fs);
elseif key=='3'
    y3=y697+y1477;
    sound(y3,fs);
elseif key=='4'
    y4=y770+y1209;
    sound(y4,fs);
elseif key=='5'
    y5=y770+y1336;
    sound(y5,fs);
elseif key=='6'
    y6=y770+y1477;
    sound(y6,fs);
elseif key=='7'
    y7=y852+y1209;
    sound(y7,fs);
elseif key=='8'
    y8=y852+y1366;
    sound(y8,fs);
elseif key=='9'
    y9=y852+y1477;
    sound(y9,fs);
elseif key=='*'
    ystar=y941+y1209;
    sound(ystar,fs);
elseif key=='0'
    y0=y941+y1336;
    sound(y0,fs);
elseif key=='#'
    yhash=y941+y1477;
    sound(yhash,fs);
end