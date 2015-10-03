module Main (main)
    where

import Data.List (group, sort)


readIntegers :: String -> [Integer]
readIntegers = map read . words

solve :: [Integer] -> [Integer]
solve xs = let n = fromIntegral $ length xs
               (a,b) = (minimum xs,maximum xs)
               [c,d] = map (fromIntegral . length . (`filter` xs) . (==)) [a,b]
               count = if a == b
                          then n*(n - 1) `div` 2
                          else c*d
            in [b - a, count]

main :: IO ()
main = putStrLn . toStr . solve . readIntegers =<< (getLine >> getLine)
    where toStr = unwords . map show
