function zad1
  x=-10:0.01:10;
  X0=0.1;
    a = fzero(@(x) <rownanie> ,X0,optimset('Display','iter'))
    plot(x,f(x));
end

function rownanie = f(x)
    rownanie = <rownanie> ;
end


function iter_zad_2
  X0 = ??;
  R(1)=X0;
  k = 0;
  for i=1:1:100
    R(i+1)=<najtrudniejsze przeksztalcenie>)
    if( abs(f(R(i+1))) < 1e-8)
      i
      k
      break
    end
  end
end
function funkcja =f(x)
  funkcja = <funkcja> ;
end
