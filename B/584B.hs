module Main (main)
    where


main :: IO ()
main = print . (`mod` (10^9 + 7)) . (\n -> 3^(3*n) - 7^n) =<< readLn
