module Main (main)
    where


main :: IO ()
main = putStrLn . unwords . map show . solve . map read . words =<< getLine
    where solve [a,b] = let k = min a b
                         in [k, (max a b - k) `div` 2]
