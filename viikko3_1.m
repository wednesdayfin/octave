%n=input("Anna n: ");
 
n=20;
 
function matriisi(n)
    % Alustetaan matriisi tayteen nollia
    A11 = zeros(n);
 
    % Taytetaan vinorivi ylavasemmalta alaoikealle ykkosilla
    for i = 1:n
        A11(i, i) = 1;
    end
 
    % Alustetaan toinen vinorivi kakkosiksi ykkosruutua lukuunottamatta
 
    for i = 1:n
        j = n - i + 1;
        if i ~= j
            A11(i, j) = 2;
        end
    end
 
    A12 = zeros(n,2);
 
    for i = 1:n
      for j = 1:2
        if mod(i+j,2) == 0
          A12(i, j) = -1;
        else
          A12(i, j) = 0;
        endif
      endfor
    endfor
 
    A21 = zeros(2,n);
 
    for i = 1:2
      for j = 1:n
        if mod(i+j,2) == 1
          A21(i, j) = 3;
        else
          A21(i, j) = 0;
        endif
      endfor
    endfor
 
    A22 = zeros(2,2);
 
    for i = 1:2
      for j = 1:2
        A22(i,j) = 1;
      endfor
    endfor
 
    A=[A11,A12;A21,A22]
 
    disp(det(A))
 
    %disp(A11);    
    %disp(A12);    
    %disp(A21);       
    %disp(A22);    
end
 
matriisi(n);

%Exercise 2

% Parametrit
Vt = 1;
Vgs = 4;
kn_prime_WL = 0.5;

% v_DS arvot
v_DS = [0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0];  % in Volts

% Lasketaan i_D jokaiselle v_DS:lle
i_D = kn_prime_WL * ((Vgs - Vt) .* v_DS - 0.5 .* v_DS.^2);

% Tulostetaan vektori
disp(i_D);
