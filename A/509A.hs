module Main (main)
    where


main :: IO ()
main = print . solve . pred =<< readLn
    where solve n = p (n + 1) (2*n) `div` p 2 n
          p a b = product [a..b]
