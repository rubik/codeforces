module Main (main)
    where


main :: IO ()
main = putStrLn . toYesNo . isLucky . length . filter luckyD =<< getLine
    where isLucky = all luckyD . show
          luckyD d = d == '4' || d == '7'
          toYesNo True  = "YES"
          toYesNo False = "NO"
