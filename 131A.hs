module Main (main)
    where

import Data.Char (isUpper, toLower, toUpper)


main :: IO ()
main = putStrLn . change =<< getLine
    where change s
            | isSwapped s = map swapCase s
            | otherwise   = s
          isSwapped (_:xs) = all isUpper xs
          swapCase c
            | isUpper c = toLower c
            | otherwise = toUpper c
