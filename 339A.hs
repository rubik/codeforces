module Main (main)
    where

import Data.Char (ord)
import Data.List (sort, intersperse)


main :: IO ()
main = putStrLn . intersperse '+' . sort . extract =<< getLine
    where extract [] = []
          extract (x:_:xs) = x:extract xs
          extract (x:xs) = x:extract xs
