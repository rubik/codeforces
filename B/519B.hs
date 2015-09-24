module Main (main)
    where

import Control.Monad (replicateM)


readInts :: String -> [Int]
readInts = map read . words

main :: IO ()
main = putStr . toStr . solve . map readInts =<< (getLine >> replicateM 3 getLine)
    where solve [as,bs,cs] = let (x,y) = (sum as, sum bs)
                              in [x - y, y - sum cs]
          toStr = unlines . map show
