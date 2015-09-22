module Main (main)
    where

import Data.List (group, sort)


main :: IO ()
main = putStrLn . chat . isGirl =<< getLine
    where isGirl = (0==) . (`mod` 2) . length . group . sort
          chat True  = "CHAT WITH HER!"
          chat False = "IGNORE HIM!"
