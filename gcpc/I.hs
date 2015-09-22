module Main (main)
    where

import Data.List (foldl1')
import Control.Monad (replicateM)


readInts :: String -> IO [Int]
readInts = return . map read . words

merge :: [[Int]] -> [Int]
merge = foldl1' (\a b -> [max u v | (u,v) <- zip a b])

solve :: Int -> Int -> Int -> Int
solve w x s = x - max 0 (s + x - w)

main :: IO ()
main = do
    [w,s] <- readInts =<< getLine
    [x,y] <- readInts =<< getLine
    workspace <- replicateM w $ readInts =<< getLine
    milling   <- replicateM s $ readInts =<< getLine
    let instr = merge milling
    let res = [zipWith (solve y) k instr | k <- workspace]
    putStrLn . unlines . map (unwords . map show) $ res
