module Main (main)
    where

import Data.List (foldl1')
import Data.Char (digitToInt)
import Data.IntMap.Strict (IntMap)
import qualified Data.IntMap.Strict as M


factorsMap :: Int -> IntMap Int
factorsMap = M.fromList . ([ []
           , []
           , [(2,1)]
           , [(2,1),(3,1)]
           , [(2,3),(3,1)]
           , [(2,3),(3,1),(5,1)]
           , [(2,4),(3,2),(5,1)]
           , [(2,4),(3,2),(5,1),(7,1)]
           , [(2,7),(3,2),(5,1),(7,1)]
           , [(2,7),(3,4),(5,1),(7,1)]
           ] !!)

allFactors :: Integer -> IntMap Int
allFactors = foldl1' (M.unionWith (+)) . map (factorsMap . digitToInt) . show

prune :: [Int] -> IntMap Int -> IntMap Int
prune [] m = m
prune (k:ks) m = prune ks $ M.update fix k m
    where fix 0 = Nothing
          fix v = Just v

reduce :: [Int] -> IntMap Int -> [Int]
reduce xs m
    | M.null m  = xs
    | otherwise = reduce (x:xs) new
        where k = M.keys m
              x = last k
              new = prune k $ M.unionWith (-) m $ factorsMap x

main :: IO ()
main = putStrLn . concatMap show . solve =<< (getLine >> readLn)
    where solve = reverse . reduce [] . allFactors
