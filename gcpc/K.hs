module Main (main)
    where


powmod :: Integer -> Integer -> Integer -> Integer
powmod b e m =
    let times p q = (p*q) `mod` m
        pow b e x
            | e == 0    = x
            | even e    = pow (times b b) (e `div` 2) x
            | otherwise = pow (times b b) (e `div` 2) (times b x)
    in pow b e 1

isSpsp :: Integer -> Integer -> Bool
isSpsp n a =
    let getDandS d s =
            if even d then getDandS (d `div` 2) (s+1)
                      else (d, s)
        spsp (d, s) =
            let t = powmod a d n
            in (t == 1) || doSpsp t s
        doSpsp t s
            | s == 0 = False
            | t == (n-1) = True
            | otherwise = doSpsp ((t*t) `mod` n) (s-1)
    in spsp $ getDandS (n-1) 0

isPrime :: Integer -> Bool
isPrime n =
    let ps = [2,3,5,7,11,13,17,19,23,29,31,37,41,
             43,47,53,59,61,67,71,73,79,83,89,97]
    in n `elem` ps || all (\i -> n `mod` i /= 0) ps &&
       all (isSpsp n) (ps ++ [5432,1265,87532,8765,26])

convert :: Char -> Char
convert '6' = '9'
convert '9' = '6'
convert  x  =  x

main :: IO ()
main = putStrLn . toYesNo . check =<< getLine
    where check s = all (\i -> i /= '3' && i /= '4' && i /= '7') s &&
                    isPrime (read . reverse $ map convert s) && isPrime (read s)
          toYesNo True  = "yes"
          toYesNo False = "no"
