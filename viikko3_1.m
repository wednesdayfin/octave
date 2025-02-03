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
