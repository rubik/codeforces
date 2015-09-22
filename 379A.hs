module Main (main)
    where


main :: IO ()
main = print . solve 1 . take 2 . map read . words =<< getLine
    where solve c [0,_] = c - 1
          solve c [n,m] = let r = if c `mod` m == 0 then 1 else 0
                           in solve (c + 1) [n - 1 + r,m]
