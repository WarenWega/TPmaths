 a =record(5) ; #on enrigstre la voix pendent 5sec
 b =fft(a) ;    #on transforme en fft
 t=1:1:40000 ;  # creer un tableau qui permet de plot
 m = 70 ;  #variable de modulation  

figure (1)
plot(t,a)
 
figure(2) 
 plot(t,b)
 
for i=1:40000
  b(i)= cos(m)*b(i);
endfor 

for i=1:40000
  b(i)= sin(m)*b(i);
endfor 

 c=ifft(b) ;
 figure(3)
plot(t,c)

