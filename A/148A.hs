module Main (main)
    where

import Data.List (foldl1')
import Control.Monad (replicateM)


combs :: [Int] -> Int
combs [k,j,m,n,u] = n1 - n2 + n3 - n4
    where n1 = d k + d j + d m + d n
          n2 = d (l [k,j]) + d (l [k,m]) + d (l [k,n]) + d (l [j,m])
             + d (l [j,n]) + d (l [m,n])
          n3 = d (l [k,j,m]) + d (l [k,j,n]) + d (l [k,m,n]) + d (l [j,m,n])
          n4 = d $ l [k,j,m,n]
          d = div u
          l = foldl1' lcm

main :: IO ()
main = print . max 0 . combs =<< replicateM 5 readLn
