module Main (main)
    where

import Data.List (group)


main :: IO ()
main = print . sum . map (pred . length) . group =<< (getLine >> getLine)
