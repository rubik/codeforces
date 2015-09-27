module Main (main)
    where

import Data.Maybe (mapMaybe)
import Data.Array (Ix, Array, listArray, bounds, (!))
import Control.Monad (mapM_)

type Bucket = (Int,Int)


pile :: (Integral i, Ix i) => Int -> Array i (Int,Bucket) -> Maybe Int
pile i a = search a i 0 $ snd $ bounds a
    where search xs needle lo hi
            | hi <= lo   = Nothing
            | needle < a = search xs needle lo mid
            | needle > b = search xs needle (mid + 1) hi
            | otherwise  = Just p
                where mid = lo + (hi - lo) `div` 2
                      (p,(a,b)) = xs!mid

buckets :: [Int] -> [Bucket]
buckets xs = zipWith (\a b -> (a + 1, b)) s $ tail s
    where s = 0:scanl1 (+) xs

main :: IO ()
main = do
    a <- getLine >> getLine
    q <- getLine >> getLine
    let [as,qs] = map (map read . words) [a,q]
    let bs = listArray (0, length as) $ zip [1..] $ buckets as
    mapM_ print $ mapMaybe (flip pile bs) qs
