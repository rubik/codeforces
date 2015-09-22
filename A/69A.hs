module Main (main)
    where

import Data.List (foldl1')
import Control.Monad (replicateM)


readInts :: String -> [Int]
readInts = map read . words

main :: IO ()
main = putStrLn . check . map readInts =<< flip replicateM getLine =<< readLn
    where check = toYesNo . all (==0) . foldl1' (zipWith (+))
          toYesNo True  = "YES"
          toYesNo False = "NO"
