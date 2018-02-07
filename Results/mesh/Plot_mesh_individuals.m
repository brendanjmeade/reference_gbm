function Plot_mesh_individuals(mesh)
load(mesh)
%Station = ReadStation('All_in_All_in_Kreemer_GPS_NA_trouble4_off_RF_Clean_PNG_Clean_noVNKR_RF_Clean.sta.data');
%figure;
meshview(c, v);
axis equal;
daspect([1, 1, 10]);
hold on;

for i = 1:size(v, 1)
   meanx = (c(v(i, 1), 1) + c(v(i, 2), 1) + c(v(i, 3), 1)) / 3;
   meany = (c(v(i, 1), 2) + c(v(i, 2), 2) + c(v(i, 3), 2)) / 3;
   meanz = (c(v(i, 1), 3) + c(v(i, 2), 3) + c(v(i, 3), 3)) / 3;

   text(meanx, meany, meanz, sprintf('%d', i));
   hold on;
end

%% if .msh file
% [c, v] = msh2coords();
% meshview(c, v);
% axis equal;
% daspect([1, 1, 10]);
% hold on;
% 
% for i = 1:size(v, 1)
%    meanx = (c(v(i, 1), 1) + c(v(i, 2), 1) + c(v(i, 3), 1)) / 3;
%    meany = (c(v(i, 1), 2) + c(v(i, 2), 2) + c(v(i, 3), 2)) / 3;
%    meanz = (c(v(i, 1), 3) + c(v(i, 2), 3) + c(v(i, 3), 3)) / 3;
% 
%    text(meanx, meany, meanz, sprintf('%d', i));
%    hold on;
% end