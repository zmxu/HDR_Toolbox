function [imgOut,pAlpha,pWhite]=ReinhardTMO(img, pAlpha, pWhite, pLocal, pPhi)
%
%
%      imgOut=ReinhardTMO(img, pAlpha, pWhite, pLocal, phi)
%
%
%       Input:
%           -img: input HDR image
%           -pAlpha: value of exposure of the image
%           -pWhite: the white point 
%           -pLocal: boolean value. If it is true a local version is used
%                   otherwise a global version.
%           -pPhi: a parameter which controls the sharpening
%
%       Output:
%           -imgOut: output tone mapped image in linear domain
%           -pAlpha: as in input
%           -pLocal: as in input 
%
%     Copyright (C) 2011  Francesco Banterle
% 
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.
%

check13Color(img);

%Luminance channel
L = lum(img);

if(~exist('pLocal'))
    pLocal = 0;
end

if(~exist('pAlpha'))
    pAlpha = ReinhardAlpha(L);
end

if(~exist('pWhite'))
    pWhite = ReinhardWhitePoint(L);
end

if(~exist('pPhi'))
    pPhi = 8;
end

%Logarithmic mean calcultaion
Lwa=logMean(L);

%Scale luminance using alpha and logarithmic mean
L=(pAlpha*L)/Lwa;

%Local calculation?
if(pLocal)
    L_adapt = ReinhardFiltering(L, pAlpha, pPhi);
end

pWhite2=pWhite*pWhite;

%Range compression
if(pLocal)
    Ld=(L.*(1+L/pWhite2))./(1+L_adapt);
else
    Ld=(L.*(1+L/pWhite2))./(1+L);
end

%Changing luminance
imgOut = ChangeLuminance(img, lum(img), Ld);

end