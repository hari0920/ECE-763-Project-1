%% Create Sample Data
x = -3:1:3;
norm = normpdf(x,0,1);
mean(norm)
sqrt(var(norm))
%plot(x,norm);
phat=mle(norm,'distribution','normal')