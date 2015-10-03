module Main (main)
    where


main :: IO ()
main = print . solve 0 0 [] . map read . words =<< (getLine >> getLine)
    where solve c _   []  [] = c
          solve c cur new [] = solve (c + 1) cur [] new
          solve c cur new (x:xs)
            | x <= cur  = solve c (cur + 1) new xs
            | otherwise = solve c cur (x:new) xs
