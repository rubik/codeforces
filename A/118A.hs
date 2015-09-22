module Main (main)
    where

import Data.Char (toLower)


main :: IO ()
main = putStrLn . transform =<< getLine
    where transform = group . filter (not . (`elem` "aeiyou")) . map toLower
          group = foldr (\c s -> '.':c:s) ""
