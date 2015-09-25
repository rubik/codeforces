module Main (main)
    where

import Control.Monad (replicateM)


main :: IO ()
main = print . solve . map (map read . words) =<< replicateM 2 getLine
    where solve [[n], xs] = sum xs / n
