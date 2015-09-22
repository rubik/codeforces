module Main (main)
    where

import Text.Printf (printf)


main :: IO ()
main = mapM_ (putStrLn . shorten) . tail . lines =<< getContents
    where shorten w
            | length w < 11 = w
            | otherwise     = let l = length w - 1
                               in printf "%c%d%c" (head w) (l - 1) (w!!l)
