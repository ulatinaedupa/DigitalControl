numgas=27;                          
dengas=[1 27 0];                    
'Ga(s)'                             
Ga=tf(numgas,dengas)                
'G(z)'                              
Gz=c2d(Ga,0.1,'zoh')                
for K=1:0.1:50;                     
Tz=feedback(K*Gz,1);                
r=pole(Tz);                         
rm=max(abs(r));                      
                                    
if rm>=1;                           
break;                              
end;                                
end;                                
K                                   
r                                   
rm                                  