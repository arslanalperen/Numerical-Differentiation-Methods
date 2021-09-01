clc; clear all;format long;

L = 0.98; %given value
R = 14.2; %given value

%-----------------------------------------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------------------------------------
%Forward Differences

%For Current1 file

load ('current1.dat')
dt = 0.075;

fprintf('Forward for current1.dat\n\n')

%Derivatives value for each time value

for i=1:8
derivatives(i:i,1) = (current1(i+1:i+1,2) - current1(i:i,2)) / dt;
fprintf('For %d time value, derivative : %d\n',current1(i:i,1),derivatives(i:i,1))
end

%E values with using derivatives
fprintf('\n');

for i=1:8
evalues(i:i,1) = (L * derivatives(i:i,1)) + (R * current1(i:i,2));
fprintf('For E value in %d time value : %d\n',current1(i:i,1),evalues(i:i,1))
end 

fprintf('\n');

%-----------------------------------------------------------------------------------------------------------------------
%For Current2 file

fprintf('------------------------------------------------------------\n');
load ('current2.dat')
dt = 0.050;

fprintf('Forward for current2.dat\n\n')

%Derivatives value for each time value

for i=1:12
derivatives(i:i,2) = (current2(i+1:i+1,2) - current2(i:i,2)) / dt;
fprintf('For %d time value, derivative : %d\n',current2(i:i,1),derivatives(i:i,2))
end

%E values with using derivatives
fprintf('\n');

for i=1:12
evalues(i:i,2) = (L * derivatives(i:i,2)) + (R * current2(i:i,2));
fprintf('For E value in %d time value : %d\n',current2(i:i,1),evalues(i:i,2))
end 

fprintf('\n');

%-----------------------------------------------------------------------------------------------------------------------
%For Current3 file

fprintf('------------------------------------------------------------\n');
load ('current3.dat')
dt = 0.025;

fprintf('Forward for current3.dat\n\n')

%Derivatives value for each time value

for i=1:24
derivatives(i:i,3) = (current3(i+1:i+1,2) - current3(i:i,2)) / dt;
fprintf('For %d time value, derivative : %d\n',current3(i:i,1),derivatives(i:i,3))
end

%E values with using derivatives
fprintf('\n');

for i=1:24
evalues(i:i,3) = (L * derivatives(i:i,3)) + (R * current3(i:i,2));
fprintf('For E value in %d time value : %d\n',current3(i:i,1),evalues(i:i,3))
end 

fprintf('\n');

%-----------------------------------------------------------------------------------------------------------------------
%For Current4 file

fprintf('------------------------------------------------------------\n');
load ('current4.dat')
dt = 0.010;

fprintf('Forward for current4.dat\n\n')

%Derivatives value for each time value

for i=1:60
derivatives(i:i,4) = (current4(i+1:i+1,2) - current4(i:i,2)) / dt;
fprintf('For %d time value, derivative : %d\n',current4(i:i,1),derivatives(i:i,4))
end

%E values with using derivatives
fprintf('\n');

for i=1:60
evalues(i:i,4) = (L * derivatives(i:i,4)) + (R * current4(i:i,2));
fprintf('For E value in %d time value : %d\n',current4(i:i,1),evalues(i:i,4))
end 

fprintf('\n');

%Graphs for Forward Differences

figure(1)
sgtitle('Forward Differences Method')
subplot(1,2,1)
plot(current1(1:8,1),derivatives(1:8,1))
hold on
plot(current2(1:12,1),derivatives(1:12,2))
hold on
plot(current3(1:24,1),derivatives(1:24,3))
hold on
plot(current4(1:60,1),derivatives(1:60,4))
hold on
grid
xlabel('Time [ms]')
ylabel('Derivatives of Current d/di(t) [A]')
legend('Current for ∆t = 75 ms','Current for ∆t = 50 ms','Current for ∆t = 25 ms','Current for ∆t = 10 ms')

subplot(1,2,2)
plot(current1(1:8,1),evalues(1:8,1))
hold on
plot(current2(1:12,1),evalues(1:12,2))
hold on
plot(current3(1:24,1),evalues(1:24,3))
hold on
plot(current4(1:60,1),evalues(1:60,4))
hold on
grid
xlabel('Time [ms]')
ylabel('E(t) [V]')
legend('Current for ∆t = 75 ms','Current for ∆t = 50 ms','Current for ∆t = 25 ms','Current for ∆t = 10 ms')
fprintf('\n')

fprintf('Error Analysis For Forward Difference\n');
fprintf('Error of Voltage Value for Current1: %f\n',norm(evalues(1:8,1)-12)/norm(evalues(1:8,1)));
fprintf('Error of Voltage Value for Current2: %f\n',norm(evalues(1:12,2)-12)/norm(evalues(1:12,2)));
fprintf('Error of Voltage Value for Current3: %f\n',norm(evalues(1:24,3)-12)/norm(evalues(1:24,3)));
fprintf('Error of Voltage Value for Current4: %f\n',norm(evalues(1:60,4)-12)/norm(evalues(1:60,4)));
fprintf('\n');

%-----------------------------------------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------------------------------------
%Backward Differences

%For Current1 file

fprintf('------------------------------------------------------------\n');
fprintf('------------------------------------------------------------\n');
load ('current1.dat')
dt = 0.075;

fprintf('Backward for current1.dat\n\n')

%Derivatives value for each time value

for i=2:9
derivatives(i-1:i-1,1) = (current1(i:i,2) - current1(i-1:i-1,2)) / dt;
fprintf('For %d time value, derivative : %d\n',current1(i:i,1),derivatives(i-1:i-1,1))
end

%E values with using derivatives
fprintf('\n')

for i=2:9
evalues(i-1:i-1,1) = L * derivatives(i-1:i-1,1) + R * current1(i:i,2);
fprintf('For E value in %d time value : %d\n',current1(i:i,1),evalues(i-1:i-1,1))
end
fprintf('\n')

%-----------------------------------------------------------------------------------------------------------------------
%For Current2 file

fprintf('------------------------------------------------------------\n');
load ('current2.dat')
dt = 0.050;

fprintf('Backward for current2.dat\n\n')

%Derivatives value for each time value

for i=2:13
derivatives(i-1:i-1,2) = (current2(i:i,2) - current2(i-1:i-1,2)) / dt;
fprintf('For %d time value, derivative : %d\n',current2(i:i,1),derivatives(i-1:i-1,2))
end

%E values with using derivatives
fprintf('\n')

for i=2:13
evalues(i-1:i-1,2) = L * derivatives(i-1:i-1,2) + R * current2(i:i,2);
fprintf('For E value in %d time value : %d\n',current2(i:i,1),evalues(i-1:i-1,2))
end
fprintf('\n')

%-----------------------------------------------------------------------------------------------------------------------
%For Current3 file

fprintf('------------------------------------------------------------\n');
load ('current3.dat')
dt = 0.025;

fprintf('Backward for current3.dat\n\n')

%Derivatives value for each time value

for i=2:25
derivatives(i-1:i-1,3) = (current3(i:i,2) - current3(i-1:i-1,2)) / dt;
fprintf('For %d time value, derivative : %d\n',current3(i:i,1),derivatives(i-1:i-1,3))
end

%E values with using derivatives
fprintf('\n')

for i=2:25
evalues(i-1:i-1,3) = L * derivatives(i-1:i-1,3) + R * current3(i:i,2);
fprintf('For E value in %d time value : %d\n',current3(i:i,1),evalues(i-1:i-1,3))
end
fprintf('\n')

%-----------------------------------------------------------------------------------------------------------------------
%For Current4 file

fprintf('------------------------------------------------------------\n');
load ('current4.dat')
dt = 0.010;

fprintf('Backward for current4.dat\n\n')

%Derivatives value for each time value

for i=2:61
derivatives(i-1:i-1,4) = (current4(i:i,2) - current4(i-1:i-1,2)) / dt;
fprintf('For %d time value, derivative : %d\n',current4(i:i,1),derivatives(i-1:i-1,4))
end

%E values with using derivatives
fprintf('\n')

for i=2:61
evalues(i-1:i-1,4) = L * derivatives(i-1:i-1,4) + R * current4(i:i,2);
fprintf('For E value in %d time value : %d\n',current4(i:i,1),evalues(i-1:i-1,4))
end
fprintf('\n')

%Graphs for Backward Differences

figure(2)
sgtitle('Backward Differences Method')
subplot(1,2,1)
plot(current1(2:9,1),derivatives(1:8,1))
hold on
plot(current2(2:13,1),derivatives(1:12,2))
hold on
plot(current3(2:25,1),derivatives(1:24,3))
hold on
plot(current4(2:61,1),derivatives(1:60,4))
hold on
grid
xlabel('Time [ms]')
ylabel('Derivatives of Current d/di(t) [A]')
legend('Current for ∆t = 75 ms','Current for ∆t = 50 ms','Current for ∆t = 25 ms','Current for ∆t = 10 ms')

subplot(1,2,2)
plot(current1(2:9,1),evalues(1:8,1))
hold on
plot(current2(2:13,1),evalues(1:12,2))
hold on
plot(current3(2:25,1),evalues(1:24,3))
hold on
plot(current4(2:61,1),evalues(1:60,4))
hold on
grid
xlabel('Time [ms]')
ylabel('E(t) [V]')
legend('Current for ∆t = 75 ms','Current for ∆t = 50 ms','Current for ∆t = 25 ms','Current for ∆t = 10 ms')
fprintf('\n')

fprintf('Error Analysis For Backward Difference\n');
fprintf('Error of Voltage Value for Current1: %f\n',norm(evalues(1:8,1)-12)/norm(evalues(1:8,1)));
fprintf('Error of Voltage Value for Current2: %f\n',norm(evalues(1:12,2)-12)/norm(evalues(1:12,2)));
fprintf('Error of Voltage Value for Current3: %f\n',norm(evalues(1:24,3)-12)/norm(evalues(1:24,3)));
fprintf('Error of Voltage Value for Current4: %f\n',norm(evalues(1:60,4)-12)/norm(evalues(1:60,4)));
fprintf('\n');

%-----------------------------------------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------------------------------------
%Three Point Midpoint Formula With Endpoints

%For Current1 file

fprintf('------------------------------------------------------------\n');
fprintf('------------------------------------------------------------\n');
load ('current1.dat')
dt = 0.075;

fprintf('Three Point Midpoint Formula with Endpoints for current1.dat\n\n')

%Derivatives value for each time value

%Three Point Enpoint For First Value

derivatives(1,1) = (1/(2*dt))*((-3*current1(1,2))+(4*current1(2,2))-current1(3,2));
fprintf('For %d time value, derivative : %d\n',current1(1:1,1),derivatives(1:1,1))

%Three Point Midpoint

for i=2:8
derivatives(i:i,1) = (1/(2*dt))*(current1(i+1:i+1,2) - current1(i-1:i-1,2));
fprintf('For %d time value, derivative : %d\n',current1(i:i,1),derivatives(i:i,1))
end

%Three Point Enpoint For Final Value

derivatives(9,1) = (1/(2*(-dt)))*((-3*current1(9,2))+(4*current1(8,2))-current1(7,2));
fprintf('For %d time value, derivative : %d\n',current1(9:9,1),derivatives(9:9,1))

%E values with using derivatives
fprintf('\n')

for i=1:9
evalues(i:i,1) = (L * derivatives(i:i,1)) + (R * current1(i:i,2));
fprintf('For E value in %d time value : %d\n',current1(i:i,1),evalues(i:i,1))
end
fprintf('\n')

%-----------------------------------------------------------------------------------------------------------------------
%For Current2 file

fprintf('------------------------------------------------------------\n');
load ('current2.dat')
dt = 0.050;

fprintf('Three Point Midpoint Formula for current2.dat\n\n')

%Derivatives value for each time value

%Three Point Enpoint For First Value

derivatives(1,2) = (1/(2*dt))*((-3*current2(1,2))+(4*current2(2,2))-current2(3,2));
fprintf('For %d time value, derivative : %d\n',current2(1:1,1),derivatives(1:1,2))

%Three Point Midpoint

for i=2:12
derivatives(i:i,2) = (1/(2*dt))*(current2(i+1:i+1,2) - current2(i-1:i-1,2));
fprintf('For %d time value, derivative : %d\n',current2(i:i,1),derivatives(i:i,2))
end

%Three Point Enpoint For Final Value

derivatives(13,2) = (1/(2*(-dt)))*((-3*current2(13,2))+(4*current2(12,2))-current2(11,2));
fprintf('For %d time value, derivative : %d\n',current2(13:13,1),derivatives(13:13,2))

%E values with using derivatives
fprintf('\n')

for i=1:13
evalues(i:i,2) = (L * derivatives(i:i,2)) + (R * current2(i:i,2));
fprintf('For E value in %d time value : %d\n',current2(i:i,1),evalues(i:i,2))
end
fprintf('\n')

%-----------------------------------------------------------------------------------------------------------------------
%For Current3 file

fprintf('------------------------------------------------------------\n');
load ('current3.dat')
dt = 0.025;

fprintf('Three Point Midpoint Formula for current3.dat\n\n')

%Derivatives value for each time value

%Three Point Enpoint For First Value

derivatives(1,3) = (1/(2*dt))*((-3*current3(1,2))+(4*current3(2,2))-current3(3,2));
fprintf('For %d time value, derivative : %d\n',current3(1:1,1),derivatives(1:1,3))

%Three Point Midpoint

for i=2:24
derivatives(i:i,3) = (1/(2*dt))*(current3(i+1:i+1,2) - current3(i-1:i-1,2));
fprintf('For %d time value, derivative : %d\n',current3(i:i,1),derivatives(i:i,3))
end

%Three Point Enpoint For Final Value

derivatives(25,3) = (1/(2*(-dt)))*((-3*current3(25,2))+(4*current3(24,2))-current3(23,2));
fprintf('For %d time value, derivative : %d\n',current3(25:25,1),derivatives(25:25,3))

%E values with using derivatives
fprintf('\n')

for i=1:25
evalues(i:i,3) = (L * derivatives(i:i,3)) + (R * current3(i:i,2));
fprintf('For E value in %d time value : %d\n',current3(i:i,1),evalues(i:i,3))
end
fprintf('\n')

%-----------------------------------------------------------------------------------------------------------------------
%For Current4 file

fprintf('------------------------------------------------------------\n');
load ('current4.dat')
dt = 0.010;

fprintf('Three Point Midpoint Formula for current4.dat\n\n')

%Derivatives value for each time value

%Three Point Enpoint For First Value

derivatives(1,4) = (1/(2*dt))*((-3*current4(1,2))+(4*current4(2,2))-current4(3,2));
fprintf('For %d time value, derivative : %d\n',current4(1:1,1),derivatives(1:1,4))

%Three Point Midpoint

for i=2:60
derivatives(i:i,4) = (1/(2*dt))*(current4(i+1:i+1,2) - current4(i-1:i-1,2));
fprintf('For %d time value, derivative : %d\n',current4(i:i,1),derivatives(i:i,4))
end

%Three Point Enpoint For Final Value

derivatives(61,4) = (1/(2*(-dt)))*((-3*current4(61,2))+(4*current4(60,2))-current4(59,2));
fprintf('For %d time value, derivative : %d\n',current4(61:61,1),derivatives(61:61,4))

%E values with using derivatives
fprintf('\n')

for i=1:61
evalues(i:i,4) = (L * derivatives(i:i,4)) + (R * current4(i:i,2));
fprintf('For E value in %d time value : %d\n',current4(i:i,1),evalues(i:i,4))
end
fprintf('\n')

%Graphs for Three Point Midpoint Formula

figure(3)
sgtitle('Three Point Midpoint With Endpoints Method')
subplot(1,2,1)
plot(current1(2:9,1),derivatives(1:8,1))
hold on
plot(current2(2:13,1),derivatives(1:12,2))
hold on
plot(current3(2:25,1),derivatives(1:24,3))
hold on
plot(current4(2:61,1),derivatives(1:60,4))
hold on
grid
xlabel('Time [ms]')
ylabel('Derivatives of Current d/di(t) [A]')
legend('Current for ∆t = 75 ms','Current for ∆t = 50 ms','Current for ∆t = 25 ms','Current for ∆t = 10 ms')

subplot(1,2,2)
plot(current1(2:9,1),evalues(1:8,1))
hold on
plot(current2(2:13,1),evalues(1:12,2))
hold on
plot(current3(2:25,1),evalues(1:24,3))
hold on
plot(current4(2:61,1),evalues(1:60,4))
hold on
grid
xlabel('Time [ms]')
ylabel('E(t) [V]')
legend('Current for ∆t = 75 ms','Current for ∆t = 50 ms','Current for ∆t = 25 ms','Current for ∆t = 10 ms')
fprintf('\n')

fprintf('Error Analysis For Midpoint Formula With Endpoints\n');
fprintf('Error of Voltage Value for Current1: %f\n',norm(evalues(1:8,1)-12)/norm(evalues(1:8,1)));
fprintf('Error of Voltage Value for Current2: %f\n',norm(evalues(1:12,2)-12)/norm(evalues(1:12,2)));
fprintf('Error of Voltage Value for Current3: %f\n',norm(evalues(1:24,3)-12)/norm(evalues(1:24,3)));
fprintf('Error of Voltage Value for Current4: %f\n',norm(evalues(1:60,4)-12)/norm(evalues(1:60,4)));
fprintf('\n');

%-----------------------------------------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------------------------------------
%Three Point Midpoint Formula Without Endpoints

%For Current1 file

fprintf('------------------------------------------------------------\n');
fprintf('------------------------------------------------------------\n');
load ('current1.dat')
dt = 0.075;

fprintf('Three Point Midpoint Formula without Endpoints for current1.dat\n\n')

%Derivatives value for each time value

%Three Point Midpoint

for i=2:8
derivatives(i-1:i-1,1) = (1/(2*dt))*(current1(i+1:i+1,2) - current1(i-1:i-1,2));
fprintf('For %d time value, derivative : %d\n',current1(i:i,1),derivatives(i-1:i-1,1))
end

%E values with using derivatives
fprintf('\n')

for i=1:8
evalues(i:i,1) = (L * derivatives(i:i,1)) + (R * current1(i:i,2));
fprintf('For E value in %d time value : %d\n',current1(i:i,1),evalues(i:i,1))
end
fprintf('\n')

%-----------------------------------------------------------------------------------------------------------------------
%For Current2 file

fprintf('------------------------------------------------------------\n');
load ('current2.dat')
dt = 0.050;

fprintf('Three Point Midpoint Formula for current2.dat\n\n')

%Derivatives value for each time value

%Three Point Midpoint

for i=2:12
derivatives(i-1:i-1,2) = (1/(2*dt))*(current2(i+1:i+1,2) - current2(i-1:i-1,2));
fprintf('For %d time value, derivative : %d\n',current2(i:i,1),derivatives(i-1:i-1,2))
end

%E values with using derivatives
fprintf('\n')

for i=1:12
evalues(i:i,2) = (L * derivatives(i:i,2)) + (R * current2(i:i,2));
fprintf('For E value in %d time value : %d\n',current2(i:i,1),evalues(i:i,2))
end
fprintf('\n')

%-----------------------------------------------------------------------------------------------------------------------
%For Current3 file

fprintf('------------------------------------------------------------\n');
load ('current3.dat')
dt = 0.025;

fprintf('Three Point Midpoint Formula for current3.dat\n\n')

%Derivatives value for each time value

%Three Point Midpoint

for i=2:24
derivatives(i-1:i-1,3) = (1/(2*dt))*(current3(i+1:i+1,2) - current3(i-1:i-1,2));
fprintf('For %d time value, derivative : %d\n',current3(i:i,1),derivatives(i-1:i-1,3))
end

%E values with using derivatives
fprintf('\n')

for i=1:24
evalues(i:i,3) = (L * derivatives(i:i,3)) + (R * current3(i:i,2));
fprintf('For E value in %d time value : %d\n',current3(i:i,1),evalues(i:i,3))
end
fprintf('\n')

%-----------------------------------------------------------------------------------------------------------------------
%For Current4 file

fprintf('------------------------------------------------------------\n');
load ('current4.dat')
dt = 0.010;

fprintf('Three Point Midpoint Formula for current4.dat\n\n')

%Derivatives value for each time value

%Three Point Midpoint

for i=2:60
derivatives(i-1:i-1,4) = (1/(2*dt))*(current4(i+1:i+1,2) - current4(i-1:i-1,2));
fprintf('For %d time value, derivative : %d\n',current4(i:i,1),derivatives(i-1:i-1,4))
end

%E values with using derivatives
fprintf('\n')

for i=1:60
evalues(i:i,4) = (L * derivatives(i:i,4)) + (R * current4(i:i,2));
fprintf('For E value in %d time value : %d\n',current4(i:i,1),evalues(i:i,4))
end
fprintf('\n')

%Graphs for Three Point Midpoint Formula

figure(4)
sgtitle('Three Point Midpoint Without Endpoints Method')
subplot(1,2,1)
plot(current1(2:9,1),derivatives(1:8,1))
hold on
plot(current2(2:13,1),derivatives(1:12,2))
hold on
plot(current3(2:25,1),derivatives(1:24,3))
hold on
plot(current4(2:61,1),derivatives(1:60,4))
hold on
grid
xlabel('Time [ms]')
ylabel('Derivatives of Current d/di(t) [A]')
legend('Current for ∆t = 75 ms','Current for ∆t = 50 ms','Current for ∆t = 25 ms','Current for ∆t = 10 ms')

subplot(1,2,2)
plot(current1(2:9,1),evalues(1:8,1))
hold on
plot(current2(2:13,1),evalues(1:12,2))
hold on
plot(current3(2:25,1),evalues(1:24,3))
hold on
plot(current4(2:61,1),evalues(1:60,4))
hold on
grid
xlabel('Time [ms]')
ylabel('E(t) [V]')
legend('Current for ∆t = 75 ms','Current for ∆t = 50 ms','Current for ∆t = 25 ms','Current for ∆t = 10 ms')
fprintf('\n')

fprintf('Error Analysis For Midpoint Formula Without Endpoints\n');
fprintf('Error of Voltage Value for Current1: %f\n',norm(evalues(1:8,1)-12)/norm(evalues(1:8,1)));
fprintf('Error of Voltage Value for Current2: %f\n',norm(evalues(1:12,2)-12)/norm(evalues(1:12,2)));
fprintf('Error of Voltage Value for Current3: %f\n',norm(evalues(1:24,3)-12)/norm(evalues(1:24,3)));
fprintf('Error of Voltage Value for Current4: %f\n',norm(evalues(1:60,4)-12)/norm(evalues(1:60,4)));
fprintf('\n');
