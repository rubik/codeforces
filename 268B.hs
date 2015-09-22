module Main (main)
    where


main :: IO ()
main = print . solve =<< readLn
    where solve n = n + sum [1 + i*(n - i) | i <- [2..n]]
