module Main (main)
    where

import Control.Monad (replicateM)


main :: IO ()
main = print . solve =<< replicateM 3 readLn
    where solve [a,b,c] = solve' a b c
          solve' 1 1 1 = 3
          solve' a 1 1 = 2*a
          solve' 1 b 1 = b + 2
          solve' 1 1 c = 2*c
          solve' 1 b c = (1 + b)*c
          solve' a 1 c = max ((a + 1)*c) (a*(1 + c))
          solve' a b 1 = a*(b + 1)
          solve' a b c = a*b*c
