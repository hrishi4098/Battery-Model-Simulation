Data = xlsread('Battery_Parameters.xlsx');

%%
SOC = Data(:,1);
OCV = Data(:,2);
R_Charge = Data(:,3);
R_Discharge = Data(:,4);

%%
plot(SOC, OCV)
figure
plot(SOC, R_Charge)
figure
plot(SOC, R_Discharge)
figure

%%
I= 2.3;
Cn= 2.3 * 3600;
Sim_Time  = 3600;
%%
sim("Project.slx");