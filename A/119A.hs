module Main (main)
    where

import Data.Bits (xor)
import Data.Ord (compare)


winner :: Int -> [Int] -> Int
winner p l@[a,b,n] = let g = gcd (l!!p) n in
    case compare n g of
        LT -> xor 1 p
        EQ -> p
        GT -> winner (xor 1 p) [a,b,n - g]

main :: IO ()
main = print . winner 0 . map read . words =<< getLine
