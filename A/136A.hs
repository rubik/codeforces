module Main (main)
    where

import Data.List (sortBy)
import Data.Ord (comparing)


readInts :: String -> [Int]
readInts = map read . words

main :: IO ()
main = putStrLn . unwords . map show . solve . readInts =<< (getLine >> getLine)
    where solve = map fst . sortBy (comparing snd) . zip [1..]
