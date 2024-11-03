clc
clear
close all

%% Task 1 - Best-Worst Scenario

%w4/w1 = 4
%w4/w2 = 2
%w4/w3 = 8
%w1/w3 = 2
%w2/w3 = 5

%min d

%s.t
%|w4/w1 - 4| <= d -----> -d <= w4/w1 - 4 <= d -----> 
% -d*w1 <= w4 - 4*w1 <= d*w1 -----> -d*w1 + 4*w1 - w4 <= 0 and
% -d*w1 - 4*w1 + w4 <= 0
%...
%|w2/w3 - 5| <= d
%we are doing the same for all of them -> <pic>
%this is non-linear model because we are multiplying d*w 

%sum i=1 to 4 w_i = 1

% -d*w1 + 4*w1 - w4 <= 0
% -d*w1 - 4*w1 + w4 <= 0
% -d*w2 + 2*w2 - w4 <= 0
% -d*w2 - 2*w2 + w4 <= 0
% -d*w3 + 8*w3 - w4 <= 0
% -d*w3 - 8*w3 + w4 <= 0
% -d*w3 + w1 - 2*w3 <= 0
% -d*w3 - w1 + 2*w3 <= 0
% -d*w3 + w2 - 5*w3 <= 0
% -d*w3 - w2 + 5*w3 <= 0

model_lab09.varnames = {'d'; 'w1'; 'w2'; 'w3'; 'w4'; };
model_lab09.obj = [1 0 0 0 0];
model_lab09.sense = "min";
%model_lab09.quadcon(1).Qc = sparse([0 0 0 0 0; -1 0 0 0 0; 0 0 0 0 0; 0 0 0 0 0; 0 0 0 0 0]); %or Qrow, Qcol, Qval
model_lab09.A = sparse([0 ones(1,4)]);
model_lab09.rhs = 1;
model_lab09.sense = '=';

% Define non-linear constraints
% sequence of variables [d w1 w2 w3 w4]

linear_part=[
    0 4 0 0 -1;
    0 -4 0 0 1;
    0 0 2 0 -1;
    0 0 -2 0 1;
    0 0 0 8 -1;
    0 0 0 -8 1;
    0 -1 0 2 0;
    0 1 0 -2 0;
    0 0 -1 5 0;
    0 0 1 -5 0];

Qc_columns=[repmat(2,2,1); repmat(3,2,1);repmat(4,6,1)]; 
    

for i=1:10
    model_lab09.quadcon(i).Qrow = 1;
    model_lab09.quadcon(i).Qcol = Qc_columns(i);
    model_lab09.quadcon(i).Qval = -1;

    model_lab09.quadcon(i).q  = linear_part(i,:)';
    model_lab09.quadcon(i).rhs = 0;
    model_lab09.quadcon(i).sense= '<';
    model_lab09.quadcon(i).name = strcat('Non-linear constraint: ', num2str(i));
end


% Write and solve the model
gurobi_write(model_lab09, 'lab09.lp');
params.outputflag = 0;
params.NonConvex = 2;
result = gurobi(model_lab09, params);

%% Question 2
CR=result.x(1)/4.47; %from table from lecture slide 32


%% Question 3

A= [40 90 30 95;
    15 95 25 100;
    90 15 80 30;
    70 30 60 40;
    60 50 40 60];

overall_score=A*result.x(2:5); %the best is the 2nd one
