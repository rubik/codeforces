module Main (main)
    where


main :: IO ()
main = putStrLn . (["Malvika","Akshat"]!!) . winner . readInts =<< getLine
    where winner [n,m] = (`mod` 2) $ solve' 0 n m
          solve' s 0 _ = s
          solve' s _ 0 = s
          solve' s n m = solve' (s + 1) (n - 1) (m - 1)
          readInts = take 2 . map read . words
