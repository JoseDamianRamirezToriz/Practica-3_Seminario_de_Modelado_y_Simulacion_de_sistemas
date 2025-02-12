%---Condiciones iniciales---%
x0 = [0, 0, 0, 0]; % [x1(0), x2(0), dx1(0), dx2]

%---Tiempo de simulación---%
tspan = [0,  10]; % De 0 a 10 segundos

%---Resolver el sistema con ODE45---%
[t, x] = ode45(@MovTraslacional, tspan, x0);

figure(1)
subplot(2,1,1);
plot(t,x(:,1),'b','LineWidth',1.75);
grid on
title("Posición de masa 1");
xlabel("Tiempo");
ylabel("Posición");

subplot(2,1,2);
plot(t,x(:,2),'r','LineWidth',1.75);
grid on
title("Posición de masa 2");
xlabel("Tiempo");
ylabel("Posición");