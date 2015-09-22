module Main (main)
    where

import Data.Char (toUpper)


main :: IO ()
main = putStrLn . (\(x:xs) -> toUpper x:xs) =<< getLine
