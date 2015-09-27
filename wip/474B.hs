module Main (main)
    where

import Control.Monad (mapM_)


pile :: Int -> [Int] -> Int -> Int
pile n (x:xs) q
    | q <= x    = n
    | otherwise = pile (n + 1) xs q

main :: IO ()
main = do
    a <- getLine >> getLine
    q <- getLine >> getLine
    let [as,qs] = map (map read . words) [a,q]
    let worms = scanl1 (+) as
    mapM_ (print . pile 1 worms) qs
