module Main (main)
    where

import Data.List (group)
import Control.Arrow ((&&&))


main :: IO ()
main = (getLine >> getLine) >>= print . solve . map read . words
    where solve = reduce 0 . map (head &&& length) . group
          reduce n [(0,_)] = n
          reduce n [(1,l)] = n + l
          reduce 0 ((0,_):xs) = reduce 0 xs
          reduce n ((1,l):xs) = reduce (n + l) xs
          reduce n ((0,l):xs)
            | l >= 2    = reduce n xs
            | otherwise = reduce (n + 1) xs
