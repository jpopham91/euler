import Data.Matrix

parse :: String -> [[Int]]
parse = map (map read . words) . lines

main = do
  text <- readFile "euler011.txt"
  let mat = fromLists $ parse text
  print mat
