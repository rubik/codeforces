module Main (main)
    where

import Control.Monad (replicateM)


main :: IO ()
main = print . solve . map (map read . words) =<< replicateM 2 getLine
    where solve [[n,_],xs] = go n 1 0 xs
          go _ _ t [] = t
          go n c t (x:xs)
            | x >= c    = go n x (t + x - c) xs
            | otherwise = go n x (t + n - c + x) xs
