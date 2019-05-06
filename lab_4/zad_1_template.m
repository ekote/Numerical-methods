function bvp_shooting
    close all;
    h = <TODO>; % krok cakowania
    x = - 1:h:7;
    DESIRED_BND_VALUE = <TODO>; % wartosc brzegowa druga
    gueses = [- 0.55, 0.55] % strzaly zmiennych stanu
    sol = [];
    hold on
    for g = 1:length(gueses)
        y = [<TODO>
        gueses(g)]; % guess ith
        for i = 1:length(x) - 1
            y(:, i + 1) = y(:, i) + h * f(x(i), y(:, i)); % metoda Eulera
            % y(:,i+1) = y(:,i) + h/2*(f(x(i), y(:,i)) + f(x(i+1), y(:,i) +
            % h*f(x(i),y(:,i)))); %metoda heuna
        end
        sol(g) = y(1, end);
        plot(x, y(1, :));
    end
    for shoot = 1:10
        g = g + 1;
        gueses(g) = spline(sol, gueses, DESIRED_BND_VALUE);
        y = [<TODO>
        gueses(g)]; % guess ith
        for i = 1:length(x) - 1
            y(:, i + 1) = y(:, i) + h * f(x(i), y(:, i));
            % y(:,i+1) = y(:,i) + h/2*(f(x(i), y(:,i)) + f(x(i+1), y(:,i) +
            h * f(x(i), y(:, i))));
            E(i) = norm(y(1, i) - fun(x(i)));
        end
        sol(g) = y(1, end)
        plot(x, y(1, :));
        if (abs(sol(g) - DESIRED_BND_VALUE) < 1e - 6)
             fprintf('Found solution %f for guess = %f\n', sol(g),
            gueses(g));
            figure
            plot(x, fun(x), '-x', x, y(1, :), '-o');
            break
        end
    end
    Emax = max(E) % blad maksymalny
    Eavg = 0;
    for i = 1:1:length(E) - 1
        Eavg = Eavg + (E(i) + E(i + 1)) / 2;
    end
    Eavg = Eavg / (length(E) - 1) % blad sredni
end
function dy = f(x, y)
    dy = <TODO> % obliczanie pochodnej
end
function d2y = fun(a)
    d2y = <TODO> % funkcja analityczna
end