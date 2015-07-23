import Data.List.Ordered

-- Euler's sieve method
primes :: [Integer]
primes = 2 : sieve [3,5..]
  where 
    sieve [] = []
    sieve (p:xs) = p : sieve (xs `minus` map (p*) (p:xs))

primeFactors n = factor n primes
  where
    factor n (p:ps) 
      | p^2 > n           = [n]
      | (n `mod` p == 0)  = p : factor (n `div` p) (p:ps)
      | otherwise         = factor n ps

main :: IO()
main = print $ last (primeFactors 600851475143)
