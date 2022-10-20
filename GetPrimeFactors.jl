function GetPrimeFactors(k::Int64)
    prime_factors = Vector{Int64}([])
    function isPrime(n::Int64)
        prime_flag = 0
        if n > 1
            for i in 2:sqrt(n) + 1
                if n % i == 0
                    prime_flag = 1  
                    break
                end
            end
            if prime_flag == 0
                return true
            else
                return false
            end
        else
            return false
        end 
    end
    for i in 2:k
        if k % i == 0 && isPrime(i) == true
            append!(prime_factors, i)
        end 
    end
    return prime_factors
end