module Main (main)
    where

import Data.List (elem)


primes :: [Integer]
primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61,
          67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137,
          139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211,
          223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283,
          293]

isPrime :: Integer -> Bool
isPrime 2 = True
isPrime x | x < 2 || x `mod` 2 == 0 = False
isPrime x = not $ any (\i -> x `mod` i == 0) $ takeWhile (\i -> i*i <= x) [3,5..]

prevPrime :: Integer -> Integer
prevPrime n
    | isPrime $ n - 1 = n - 1
    | otherwise       = prevPrime $ n - 1

main :: IO ()
main = putStrLn . toStr . solve =<< readLn
    where solve n | n `elem` primes = [n]
          solve n = let p = prevPrime n in p:go primes (n - p)
          go [] _ = []
          go (p:ps) n
            | n - p == 0 = [p]
            | isPrime $ n - p = [p, n - p]
            | otherwise       = go ps n
          toStr xs = show (length xs) ++ "\n" ++ unwords (map show xs)
