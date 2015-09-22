module Main (main)
    where

import Data.Bits (xor)


interleave :: [String] -> [String] -> [String]
interleave [s] _ = [s]
interleave (x:xs) (y:ys) = x:y:interleave xs ys

main :: IO ()
main = putStr . unlines . compose . map read . words =<< getLine
    where compose [n,m] = interleave (full n m) (alt m (1::Int))
          full n m = replicate ((n + 1) `div` 2) $ replicate m '#'
          alt m c = turn m c:alt m (c `xor` 1)
          turn m 1 = replicate (m - 1) '.' ++ "#"
          turn m 0 = '#':replicate (m - 1) '.'
