%Problema 1 dy/dt= t/y Rodrigo Gabriel Rodríguez Escareño 1629259
function  y1=Funcp1(t,y)  %Archivo .function 
y1=t/y; 
end
%Archivo que contiene la solución de la ecuación diferencial con ode45
y0=1 % establecemos la condicion inicialde la ecuacion diferencial
[t,y]=ode23(@Funcp1,[0 20],y0); %se determina la rutina de solucion de matlab
plot(t,y) %se grafica la funcion
xlabel('tiempo t')
ylabel('y')
title('edo problema 1') 

%Problema 2
function  y1=Funcp2(t,y) %Archivo .function
alfa= 1
fi=1
y1=alfa*y - fi*(y)^2; 
end
%Archivo que contiene la solución de la ecuación diferencial con ode45
y0=10 % establecemos la condicion inicialde la ecuacion diferencial
[t,y]=ode45(@Funcp2,[0 10],y0); %se determina la rutina de solucion de matlab
plot(t,y) %se grafica la funcion
xlabel('tiempo t')
ylabel('y')
title('edo problema 2') 

%Problema 3
function y1=Funcp4(t,y)
y1=exp(2*y)*sin(t); 
end
y0=0 % establecemos la condicion inicialde la ecuacion diferencial
[t,y]=ode45(@Funcp4,[0 10],y0); %se determina la rutina de solucion de matlab
plot(t,y) %se grafica la funcion
xlabel('t')
ylabel('y')
title('edo problema 3')

%Problema 4
function y1=Funcp4(x,y)
y1=exp(x)/(2*y); 
end
y0=1 % establecemos la condicion inicialde la ecuacion diferencial
[x,y]=ode45(@Funcp4,[0 10],y0); %se determina la rutina de solucion de matlab
plot(t,y) %se grafica la funcion
xlabel('x')
ylabel('y')
title('edo problema 4') 

%Ecuaciones
A=dsolve('Dy=t/y','y(0)=1','t')
simplify (A)
pretty (A)
syms alfa fi
B=dsolve('Dy=(y)-(y^2)','y(0)=10','t')
simplify (B)
pretty (B)
C=dsolve('Dy=exp(2*y)*sin(t)','y(0)=0','t')
simplify (C)
pretty (C)
D=dsolve('Dy=(exp(x))/(2*y)','y(0)=1','x')
simplify (D)
