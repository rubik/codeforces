module Main (main)
    where

import Data.List (group, sort)


main :: IO ()
main = print . head . filter isDistinct . tail . enumFrom =<< (readLn :: IO Int)
    where isDistinct = (4==) . length . group . sort . show
