function mask = AngularMask(r,c)
%
%        mask = AngularMask(r,c)
%
%        This function creates a mask for a Angular/Spherical map
%
%        Input:
%           -r: rows of the image in the Angular/Spherical format
%           -c: columns of the image in the Angular/Spherical format
%        Output:
%           -mask: a mask where the Angular/Spherical is defined
%
%     Copyright (C) 2011-12  Francesco Banterle
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


[X,Y]=meshgrid(1:c,1:r);
X = X/c*2-1; Y = Y/r*2-1;
R = sqrt(X.^2+Y.^2);

tmpMask = ones(r,c);
tmpMask(find(R>1)) = 0;

mask = zeros(r,c,3);
for i=1:3
    mask(:,:,i) = tmpMask;
end

end