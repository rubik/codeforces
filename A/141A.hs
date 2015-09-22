module Main (main)
    where

import Data.List (sort)
import Control.Monad (replicateM)


main :: IO ()
main = putStrLn . toYesNo . check =<< replicateM 3 getLine
    where check [a,b,c] = sort (a ++ b) == sort c
          toYesNo True  = "YES"
          toYesNo False = "NO"
