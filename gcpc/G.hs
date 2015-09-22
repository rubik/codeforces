module Main (main)
    where


main :: IO ()
main = putStrLn . toYesNo . checkSeq . map read . words =<< (getLine >> getLine)
    where checkSeq :: [Int] -> Bool
          checkSeq xs = all (uncurry (<=)) $ zip xs (tail xs)
          toYesNo True  = "yes"
          toYesNo False = "no"
