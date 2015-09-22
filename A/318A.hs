module Main (main)
    where


main :: IO ()
main = print . find . take 2 . map read . words =<< getLine
    where find [n,k]
            | k > lastOdd = 2*(k - lastOdd)
            | otherwise   = 2*k - 1
                where lastOdd = (n + n `mod` 2) `div` 2
