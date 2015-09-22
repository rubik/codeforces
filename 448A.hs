module Main (main)
    where

import Control.Monad (replicateM)


readInts :: String -> [Int]
readInts = map read . words

main :: IO ()
main = putStrLn . toYesNo . solve . map readInts =<< replicateM 3 getLine
    where solve [as,bs,[n]] = n >= shelves (sum as) 5 + shelves (sum bs) 10
          shelves c m = let (q,r) = divMod c m in q + min 1 r
          toYesNo True  = "YES"
          toYesNo False = "NO"
