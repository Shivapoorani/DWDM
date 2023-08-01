w = c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)
m1=mean(w)
m1
m2=median(w)
m2 
getmode = function(v){uniqv = unique(v)
uniqv[which.max(tabulate(match(v,uniqv)))]}
m3 =  getmode(w)
print(m3)
m4=min(w)
m4
m5=max(w)
m5
midrange=(m4+m5)/2
midrange
Q1 <- quantile(w, 0.25)
Q1
Q3 <- quantile(w, 0.75)
Q3


