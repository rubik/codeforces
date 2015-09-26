module Main (main)
    where

import Data.Ord (compare)
import Data.List (sortBy)
import Data.Char (digitToInt)

-- Observe that while primes must remain, everything else can be reduced
reduce :: Int -> String
reduce = (["", "", "2", "3", "322", "5", "53", "7", "7222", "7332"]!!)

main :: IO ()
main = putStrLn . solve . map digitToInt =<< (getLine >> getLine)
    where solve = sortBy (flip compare) . concatMap reduce
