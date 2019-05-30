function zad1
  x=-10:0.01:10;
  X0=0.1;
    a = fzero(@(x) <rownanie> ,X0,optimset('Display','iter'))
    plot(x,f(x));
end

function rownanie = f(x)
    rownanie = <rownanie> ;
end
