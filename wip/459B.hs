module Main (main)
    where

import Data.List (group, sort)


main :: IO ()
main = putStrLn . toStr . solve . map read . words =<< (getLine >> getLine)
    where solve xs = let q = [(head i, length i) | i <- group $ sort xs]
                         n = length xs
                         ((a, b), (c, d)) = (head q, last q)
                         sec | b == d    = n*(n - 1) `div` 2
                             | otherwise = b*d
                      in [c - a, sec]
          toStr = unwords . map show
