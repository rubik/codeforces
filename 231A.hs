module Main (main)
    where

import Control.Monad (replicateM)


main :: IO ()
main = print . numValid =<< flip replicateM getLine =<< readLn
    where numValid = length . filter (>1) . map (sum . map read . words)
