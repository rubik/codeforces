module Main
    where

import Data.List (sort, group)


numTaxi :: [Int] -> Int
numTaxi [o,t,h,f] = f + h + q + a + r + rest
    where (q,r) = divMod t 2
          rest1 = o - h - 2*r
          (a,b) = if rest1 > 0 then divMod rest1 4 else (0,0)
          rest  = if b > 0 then 1 else 0

count :: String -> [Int]
count = map (pred . length) . group . sort . ([1..4]++) . map read . words

main :: IO ()
main = print . numTaxi . count =<< (getLine >> getLine)
