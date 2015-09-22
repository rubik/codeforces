module Main (main)
    where


readInts :: String -> [Int]
readInts = map read . words

main :: IO ()
main = print . solve . readInts =<< (getLine >> getLine)
    where solve (x:xs) = go 0 1 x xs
          go m t _ [] = max m t
          go m t last (x:xs)
            | x >= last = go m (t + 1) x xs
            | otherwise = go (max m t) 1 x xs
