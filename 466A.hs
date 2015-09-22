module Main (main)
    where


main :: IO ()
main = print . solve . take 4 . map read . words =<< getLine
    where solve [n,m,a,b]
            | a*m <= b  = a*n
            | otherwise = let (q,r) = divMod n m in b*q + min (a*r) b
