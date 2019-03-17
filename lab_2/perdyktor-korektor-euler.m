 # przykładowa implementacja schematu predyktor-korektor w przypadku schematów Eulera: 
 # otwartego schematu Eulera wziętego jako predyktor i zamkniętego schematu Eulera, który tu pełni rolę 
 # korektora dla równania x'=1+x*x z x(0)=0 z rozwiązaniem x(t)=\tan(t). Zaimplementowaliśmy
 # powyższy schemat w octave biorąc jako metodę iteracyjnego rozwiązywania równania nieliniowego w każdym kroku funkcję octave fsolve():


 function [X,t]=predkoreuler(f,t0=0,x0=1,N=100,h=1.0/N)
 # Parametry funkcji:
 #f - wskaznik do pola wektorowego - funkcji dwóch argumentów f(x,t)
 #    przy czym x0 - wektor pionowy dlugosc M;
 # przyklad definicji wskaznika do prostego pola wekt.: f=@(x,t) -x;
 #t0 - czas początkowy
 #h - stały krok dla schematu Eulera
 #N - ilość kroku schematu
 #Funkcja zwraca macierz X wymiaru (N+1)xM długości N+1 taka ze
 #X(k,:) jest przybliżeniem rozwiazania w punkcie czasu t0+(k-1)*h
 #oraz wektor t dlugosci N+1 z dyskretnymi punktami czasowymi
 global xx hh tt
 hh=h;
 M=length(x0);
 X=zeros(N+1,M);
 t=zeros(N+1,1);
 xx=X(1,:)=x0;
 tt=t(1)=t0;
 for k=2:N+1,
   xp=xx+h*f(xx,tt); #predyktor
   g=@(x) x - hh*f(x,tt) - xx; #funkcja pomocnicza dla zamkniętego schematu Eulera
   X(k,:)=xx=fsolve(g,xp); #rozwiązujemy równanie - korektor
   tt+=hh;
   t(k)=tt;
 endfor
 endfunction