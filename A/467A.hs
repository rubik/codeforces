module Main (main)
    where

import Control.Monad (replicateM)


main :: IO ()
main = print . count . map readInts =<< flip replicateM getLine =<< readLn
    where count = length . filter (>= 2) . map (\[a,b] -> b - a)
          readInts = map read . words
