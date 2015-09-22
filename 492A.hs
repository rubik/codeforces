module Main (main)
    where


main :: IO ()
main = print . solve =<< readLn
    where solve n = pred . fst . head . dropWhile ((<=n) . snd) $
            [(n,(n^3 + 3*n^2 + 2*n) `div` 6) | n <- [1..]]
