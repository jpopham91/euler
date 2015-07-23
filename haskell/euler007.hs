import Data.List.Ordered

-- Euler's sieve method
primes :: [Integer]
primes = 2 : sieve [3,5..]
  where 
    sieve [] = []
    sieve (p:xs) = p : sieve (xs `minus` map (p*) (p:xs))

main :: IO()
main = print (primes !! 10000)
