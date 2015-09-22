module Main (main)
    where


search :: String -> String -> Bool
search [] _ = True
search _ [] = False
search xt@(x:xs) (y:ys)
    | x == y    = search xs ys
    | otherwise = search xt ys

main :: IO ()
main = putStrLn . toYesNo . search "hello" =<< getLine
    where toYesNo True  = "YES"
          toYesNo False = "NO"
