normSize = cohDPCC();
normSize(normSize < 0) = min(normSize(normSize > 0));
radiusMin = min(normSize);
radiusMax = max(normSize);
stepSize = (radiusMax-radiusMin)/10;
legendRadii = ([radiusMin:stepSize:radiusMax]+0.5)*1.1;
figure("color","white","Position",[1000         243        1304        1095]);
surf = plot3DModel(gca,VERA.cortex);
surf.FaceColor = [100,126,146]/256;
alpha(0.02)
hold on
for ch = 1:numChans
    if ismember(ch,ch2plot) ==1
        curColor = [1,0,0];
    else
        curColor = PCCColor;
    end
plotBallsOnVolume(gca,VERA.tala.electrodes(ch,:),curColor,((normSize(ch)+0.5)*1.1),"MarkerEdgeColor","k")
hold on
end
% xMax = 50;
% yMax = 50;
% zMax = 0;
% for legend = 1:length(legendRadii)
%     if legend ~=1
% yMax = yMax + legendRadii(legend - 1) + 5;
%     end
% plotBallsOnVolume(gca,[xMax,yMax,zMax],curColor,legendRadii(legend),"MarkerEdgeColor","k")
% end
% view([180 0] )
% saveas(gcf,‘figures/cohDACCbrainFront.png’)
%
% view([-93.0402,-1])
% saveas(gcf,‘figures/cohDACCbrainSide.png’)
%
% view([-2,90])
% saveas(gcf,‘figures/cohDACCbrainTop.png’)
view([-494.1925 60.3828] )
saveas(gcf,‘figures/cohDPCCbrainDiag.png’)