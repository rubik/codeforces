module Main (main)
    where


divisors :: Int -> [Int]
divisors n = concatMap (\x -> [x, n `div` x]) .
             filter (\x -> n `mod` x == 0) .
             takeWhile (\x -> x*x <= n) $ [1..]

main :: IO ()
main = putStrLn . toYesNo . isAlmostLucky =<< readLn
    where isAlmostLucky = any isLucky . divisors
          isLucky = all (\d -> d == '4' || d == '7') . show
          toYesNo True  = "YES"
          toYesNo False = "NO"
