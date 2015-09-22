module Main (main)
    where

import Data.List (group)


main :: IO ()
main = putStrLn . toYesNo . check =<< getLine
    where check = (>6) . maximum . map length . group
          toYesNo True  = "YES"
          toYesNo False = "NO"
