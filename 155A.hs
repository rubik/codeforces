module Main (main)
    where

import Data.List (group)


main :: IO ()
main = print . solve . map read . words =<< (getLine >> getLine)
    where solve :: [Int] -> Int
          solve xs = length (mins xs) + length (maxes xs) - 2
          mins  = scanWith min
          maxes = scanWith max
          scanWith f = map head . group . scanl1 f
