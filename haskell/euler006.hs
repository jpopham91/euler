sumOfSquares :: [Integer] -> Integer
sumOfSquares arr = sum $ map (^2) arr

squaredSum :: [Integer] -> Integer
squaredSum arr = (sum arr)^2

difference :: [Integer] -> Integer
difference arr = squaredSum arr - sumOfSquares arr

main :: IO()
main = print $ (difference [1..100])
