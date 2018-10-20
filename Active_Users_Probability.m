N=35;
p=[0.01:0.01:0.99];
 
for l=[1:length(p)]
    for k=[1:1:11]
        x(k) = nchoosek(N,k-1).*(p(l)^(k-1)).*(1-p(l)).^(N-k+1);
    end
    sum(x);
    Prob1(l)= 1-sum(x);
end
 
plot(p,Prob1)
xlabel('Probability') 
ylabel('Probability of having more than 10 active users at a time')
title ('Probability of having more than 10 active users at a time while varying p between 0.01 and 0.99')
