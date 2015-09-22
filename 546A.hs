module Main (main)
    where


main :: IO ()
main = print . max 0 . solve . take 3 . map read . words =<< getLine
    where solve [k,n,w] = k*(w*(w+1) `div` 2) - n
