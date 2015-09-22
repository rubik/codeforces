module Main (main)
    where


main :: IO ()
main = putStrLn . toYesNo . (\p -> any (`elem` p) "HQ9") =<< getLine
    where toYesNo False = "NO"
          toYesNo True  = "YES"
