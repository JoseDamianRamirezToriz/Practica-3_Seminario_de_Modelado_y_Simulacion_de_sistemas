function dx = MovTraslacional(t, x)
    %---Definición de los parámetros---%
    m1 = 290;       % Un cuarto de la masa del automovil (kg)
    b1 = 1000;         % Coeficiente del amortiguador (Ns/m)
    m2 = 59;       % Rueda-neumatico-eje  (kg)
    k1 = 16182;       % Elasticidad de la suspencion (N/m)
    f = 0;            % Fuerza aplicada (N)
    k2 = 19000;       % Elasticidad de la llanta (N/m)
    %z = 0.05*sin(0.5*pi*t);         % z1 desplazamiento vertical(m)
    z = 0.05*sin(20*pi*t);         % z2 desplazamiento vertical(m)

    %---Estados del sistema---%
    dx = zeros(4, 1);


    %---Definición de la dinámica del sistema---%
 
    dx(1) = x(3);
    dx(2) = x(4);
    dx(3) = (1/m1) * (f - (b1*x(3)) + (b1*x(4)) - (k1*x(1)) + (k1*x(2)) );
    dx(4) = (1/m2) * (-f + (k2*z) + (b1*x(3)) - (b1*x(4)) + (k1*x(1))  - ((k1+k2)*x(2)));