%
%     HDR Toolbox Installer
%
%     Copyright (C) 2011-2013  Francesco Banterle
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

disp('Installing the HDR Toolbox...');

d1  = 'ColorSpace';
d2  = 'Compression';
d3  = 'EnvironmentMaps';
d4  = 'EO';
d5  = 'EO/util';
d6  = 'Formats';
d7  = 'Generation';
d8  = 'IBL';
d9  = 'IBL/util';
d10 = 'IO';
d11 = 'LaplacianPyramids';
d12 = 'NativeVisualization';
d13 = 'Tmo';
d14 = 'Tmo/util';
d15 = 'util';
d16 = 'BatchFunctions';
d17 = 'Metrics';
d18 = 'Metrics/util';
d19 = 'Alignment';
d20 = 'IO_video';
d21 = 'Tmo_video';
d22 = 'ColorCorrection';

cp = pwd();

tmpStr = '/source_code/';
addpath([cp,tmpStr,d1], '-begin');
addpath([cp,tmpStr,d2], '-begin');
addpath([cp,tmpStr,d3], '-begin');
addpath([cp,tmpStr,d4], '-begin');
addpath([cp,tmpStr,d5], '-begin');
addpath([cp,tmpStr,d6], '-begin');
addpath([cp,tmpStr,d7], '-begin');
addpath([cp,tmpStr,d8], '-begin');
addpath([cp,tmpStr,d9], '-begin');
addpath([cp,tmpStr,d10],'-begin');
addpath([cp,tmpStr,d11],'-begin');
addpath([cp,tmpStr,d12],'-begin');
addpath([cp,tmpStr,d13],'-begin');
addpath([cp,tmpStr,d14],'-begin');
addpath([cp,tmpStr,d15],'-begin');
addpath([cp,tmpStr,d16],'-begin');
addpath([cp,tmpStr,d17],'-begin');
addpath([cp,tmpStr,d18],'-begin');
addpath([cp,tmpStr,d19],'-begin');
addpath([cp,tmpStr,d20],'-begin');
addpath([cp,tmpStr,d21],'-begin');
addpath([cp,tmpStr,d22],'-begin');
addpath([cp,'/demos/'], '-begin');

savepath
disp('done!');

clear('d1');
clear('d2');
clear('d3');
clear('d4');
clear('d5');
clear('d6');
clear('d7');
clear('d8');
clear('d9');
clear('d10');
clear('d11');
clear('d12');
clear('d13');
clear('d14');
clear('d15');
clear('d16');
clear('d17');
clear('d18');
clear('d19');
clear('d20');
clear('d21');
clear('d22');
clear('cp');
clear('tmpStr');
disp(' ');
disp('Check demos in the folder ''demos'' for learning how to use the HDR Toolbox!');
disp(' ');
disp('If you use the toolbox for research, please reference the book in your papers:');
disp('Advanced High Dynamic Range Imaging: Theory and Practice');
