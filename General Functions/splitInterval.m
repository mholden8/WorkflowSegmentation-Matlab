%This function will split an interval using a specified number of splitting
%points

%Paramer a: The lower endpoint of the interval
%Parameter b: The upper endpoint of the interval
%Parameter n: The number of points used to split the interval

%Return split: A vector of splitting points for the interval
function split = splitInterval(a,b,n)

%Note that there will be a splitting point at each end of the interval. If
%n is one then just return the first point in the interval
if (n==1)
    split = a;
    return;
end

%Find the length of each interval, noting that there will be (n-1)
%intervals
len = (b-a)/(n-1);

%Create a split point vector using the length of interval
split = a:len:b;