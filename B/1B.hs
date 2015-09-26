module Main (main)
    where

import Data.List (foldl', unfoldr)
import Data.Tuple (swap)
import Data.Char (ord, chr, isAsciiUpper, isDigit)
import Control.Monad (replicateM)


toCartesian :: String -> String
toCartesian xs = 'R':row ++ 'C':show col
    where (q,row) = span isAsciiUpper xs
          col = foldl' (\r c -> 26 * r + ord c - ord 'A' + 1) 0 q

toExcel :: String -> String
toExcel (_:xs) = col ++ row
    where (row,_:ccol) = span isDigit xs
          col = reverse . map (\i -> chr $ ord 'A' + i) . go $ read ccol
          go 0 = []
          go n = let (q,r) = divMod n 26
                     (cur,next) = if r == 0 then (25,q - 1) else (r - 1,q)
                   in cur:go next

main :: IO ()
main = putStr . unlines . map solve =<< flip replicateM getLine =<< readLn
    where solve xs
            | all isDigit $ dropWhile isAsciiUpper xs = toCartesian xs
            | otherwise = toExcel xs
