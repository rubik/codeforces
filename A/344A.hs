module Main (main)
    where

import Data.List (foldl')
import Control.Monad (replicateM)


addMag :: [[String]] -> String -> [[String]]
addMag [] y = [[y]]
addMag xt@(x:xs) y
    | head x == y = (y:x):xs
    | otherwise   = [y]:xt

main :: IO ()
main = print . length . foldl' addMag [] =<< flip replicateM getLine =<< readLn
