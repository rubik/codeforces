module Main (main)
    where


main :: IO ()
main = print . solve . sum . map read . words =<< getLine
    where solve 0 = -1
          solve s
            | s `mod` 5 == 0 = s `div` 5
            | otherwise      = -1
