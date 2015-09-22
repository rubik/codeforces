module Main (main)
    where

import Data.Ord (compare)
import Data.Char
import Control.Monad (replicateM)


main :: IO ()
main = print . toInt . cmp . map (map toLower) =<< replicateM 2 getLine
    where cmp [a,b] = compare a b
          toInt LT = -1
          toInt EQ =  0
          toInt GT =  1
