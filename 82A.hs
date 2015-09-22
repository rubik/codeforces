module Main (main)
    where


queue :: [String]
queue = ["", "Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]

main :: IO ()
main = putStrLn . (queue!!) . fromInteger . solve =<< readLn
    where solve n | n < 6 = n
          solve n = let i = floor . logBase 2 . fromIntegral . ceiling $
                            fromInteger n / 5
                     in ceiling $ fromIntegral (n - 5*(2^i - 1)) / 2^i
