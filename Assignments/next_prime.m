function k = next_prime(n)
if n<=0||~isscalar(n)
    k=false;
elseif n==2
    k=3;
else
    if isprime(n)
        while ~isprime(n+1)
            n=n+1;
        end
        k=n+1;
    else
    while ~isprime(n)
        n=n+1;
    end
    k=n;
    end
end

