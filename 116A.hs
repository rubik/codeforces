module Main (main)
    where

import Control.Monad (replicateM)


main :: IO ()
main = print . capacity . map readLine =<< flip replicateM getLine =<< readLn
    where capacity = maximum . scanl (\c [a,b] -> c - a + b) 0
          readLine = map read . words
