module Main (main)
    where


main :: IO ()
main = print . calc . take 2 . map read . words =<< getLine
    where calc [m,n] = (m * n) `div` 2
