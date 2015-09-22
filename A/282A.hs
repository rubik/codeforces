module Main (main)
    where

import Data.List (sort, group)
import Control.Monad (replicateM)


main :: IO ()
main = print . exec . map (head . tail) =<< flip replicateM getLine =<< readLn
    where exec = count . map (pred . length) . group . sort . ("+-"++)
          count [p,m] = p - m
