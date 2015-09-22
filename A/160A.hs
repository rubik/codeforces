module Main (main)
    where

import Data.Ord (compare)
import Data.List (sortBy, inits, tails)


main :: IO ()
main = print . solve . group' . map read . words =<< (getLine >> getLine)
    where solve = length . fst . head . dropWhile (\(a,b) -> sum a <= sum b)
          group' = (\xs -> zip (inits xs) (tails xs)) . sortBy (flip compare)
