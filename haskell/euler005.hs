isDivisibleThru :: Integer -> Integer -> Bool
isDivisibleThru num range = all (==0) remainders
  where remainders = map (num `mod`) [1..range]

smallestMultiple :: Integer -> Integer
smallestMultiple 0 = 0
smallestMultiple 1 = 1
smallestMultiple n = let step = smallestMultiple (n-1)
                     in head $ filter (`isDivisibleThru` n) [step, 2*step..]

main :: IO()
main = print $ smallestMultiple 20   
