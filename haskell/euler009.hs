isTriplet :: Int -> Int -> Int -> Bool
isTriplet a b c = (a < b) && 
                  (b < c) && 
                  (a^2 + b^2 == c^2)

main :: IO()
main = print $  head [a*b*c | a <- [1..999],
                              b <- [1..999],
                              c <- [1..999],
                              a+b+c == 1000,
                              isTriplet a b c]
