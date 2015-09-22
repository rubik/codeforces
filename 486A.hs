module Main (main)
    where


main :: IO ()
main = print . solve =<< readLn
    where solve n = let r = n `mod` 2 in (-1)^r * (n + r) `div` 2
