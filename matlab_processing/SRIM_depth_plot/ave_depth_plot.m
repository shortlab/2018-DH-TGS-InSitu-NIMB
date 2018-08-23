%plot average depth thing for beamline facilities paper

grat=4.5447;

load('W_dpa.mat')
load('W_depth.mat')
load('Ni_dpa.mat')
load('Ni_depth.mat')

f=figure();
yyaxis left
plot(Ni_depth,Ni_dpa,'k-','LineWidth',1.25)
ylim([0 max(Ni_dpa)*1.05])
hold on
plot([grat grat],ylim(),'b--','LineWidth',1.25)
hold on
plot([grat grat]/pi,ylim(),'r--','LineWidth',1.25)
hold on
ni_ax=gca;
set(gca,...
        'FontUnits','points',...
        'FontWeight','normal',...
        'FontSize',16,...
        'FontName','Helvetica',...
        'LineWidth',1.25,...
        'YColor','k')
    ylabel('31 MeV Ni^{5+} in Ni Dose [dpa]',...
        'FontUnits','points',...
        'FontName','Helvetica',...
        'FontSize',20,...
        'Color','k')
    xlabel(['Depth [' 956 'm]'],...
        'FontUnits','points',...
        'FontName','Helvetica',...
        'FontSize',20,...
        'Color','k')
hold on
yyaxis right
plot(W_depth,W_dpa,'k--','LineWidth',1.25)
ylim([0 max(W_dpa)*1.05])
hold on
set(gca,...
        'FontUnits','points',...
        'FontWeight','normal',...
        'FontSize',16,...
        'FontName','Helvetica',...
        'LineWidth',1.25,...
        'YColor','k')
    ylabel('3.7 MeV He^{+} in W Dose [dpa]',...
        'FontUnits','points',...
        'FontName','Helvetica',...
        'FontSize',20,...
        'Color','k')
    xlabel(['Depth [' 956 'm]'],...
        'FontUnits','points',...
        'FontName','Helvetica',...
        'FontSize',20,...
        'Color','k')
    
yyaxis left
ylabel('31 MeV Ni^{5+} in Ni Dose [dpa]',...
        'FontUnits','points',...
        'FontName','Helvetica',...
        'FontSize',20,...
        'Color','k')