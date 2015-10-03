module Main (main)
    where

import Data.Tuple (swap)
import Data.List (group, sort)
import Control.Arrow ((&&&))


main :: IO ()
main = putStrLn . uncurry replicate . solve =<< getLine
    where solve = swap . maximum . map (head &&& length) . group . sort
