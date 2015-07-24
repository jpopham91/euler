import Data.Numbers.Primes

-- Wheel sieve
main :: IO()
main = print $ sum $ takeWhile (<2000000) primes
