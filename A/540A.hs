module Main (main)
    where

import Data.Char (digitToInt)
import Control.Monad (replicateM)


readInts :: String -> [Int]
readInts = map digitToInt

main :: IO ()
main = print . solve . map readInts =<< (getLine >> replicateM 2 getLine)
    where solve [xs,ys] = sum $ zipWith moves xs ys
          moves a b = min (abs $ a - b) (9 - max a b + min a b + 1)
