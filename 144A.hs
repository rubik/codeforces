module Main (main)
    where

import Data.List (elemIndices)


readInts :: String -> [Int]
readInts = map read . words

indices :: [Int] -> (Int, Int, Int)
indices xs = let (a,b) = (minimum xs, maximum xs)
                 n = length xs
              in (n,
                  last $ a `elemIndices` xs,
                  head $ b `elemIndices` xs)

main :: IO ()
main = print . steps . indices . map read . words =<< (getLine >> getLine)
    where steps (n,a,b) = let i = if a < b then -1 else 0
                           in i + n + b - a - 1
