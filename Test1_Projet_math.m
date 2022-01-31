 a =record(5) ;
 b =fft(a) ;
 t=1:1:40000 ;
 figure(1)
 plot(t,b)
 
 for i=201:19800 
   b(i)=b(i-200);
   b(40000-i+1)=b(40000-i+200);
 endfor
 
 for y=1:200
   b(y) = i*0;
   b(40000-y+1) = i*0;
 endfor

 c=ifft(b) ;

figure(2)
plot (t,c) 
sound(c);
