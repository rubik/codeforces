module Main (main)
   where


go :: Integer -> Integer -> Integer
go n t | t >= 10^n = -1
go n 10 = 10^(n - 1)
go n t  = t*10^(n - 1)

main :: IO ()
main = print . solve . map read . words =<< getLine
    where solve [n,t] = go n t
