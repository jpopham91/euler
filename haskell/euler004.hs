import Data.List

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = (x == reverse x)

products = [x*y | x <- [100..999], y <- [100..999]]
palindromes = map (read::String->Int)  $ filter isPalindrome $ map show products

main :: IO()
main = print (maximum palindromes)
