module Main (main)
    where

import Control.Monad (replicateM)


main :: IO ()
main = putStrLn . toYesNo . check =<< replicateM 2 getLine
    where check [a,b] = a == reverse b
          toYesNo True  = "YES"
          toYesNo False = "NO"
