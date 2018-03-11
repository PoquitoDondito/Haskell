module Test01 where

import Data.List
import Test02
import Test09

filter2 :: Eq a => (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filter2 x y z = filter x z `union` filter y z

{-This is just a caller function which runs all the other functions,
useful because I don't want to just call this huge list constantly-}
findAllVowels :: String -> [(Int, Int)]
findAllVowels x =
  [findAllAs x,
  findAllEs x,
  findAllIs x,
  findAllOs x,
  findAllUs x]

{-These functions take the inputed string and filter out the lower case
and upper case letters, creating a list of both of them. It then applies
the funciton length to find the lower and upper case of a letter and
stores it in a tuple-}
findAllAs :: String -> (Int, Int)
findAllAs x = (length $ filter (=='A') x, length $ filter (=='a') x)
findAllEs :: String -> (Int, Int)
findAllEs x = (length $ filter (=='E') x, length $ filter (=='e') x)
findAllIs :: String -> (Int, Int)
findAllIs x = (length $ filter (=='I') x, length $ filter (=='i') x)
findAllOs :: String -> (Int, Int)
findAllOs x = (length $ filter (=='O') x, length $ filter (=='o') x)
findAllUs :: String -> (Int, Int)
findAllUs x = (length $ filter (=='U') x, length $ filter (=='u') x)

{-Without knowing exactly the order of the tuples in the above function,
it is difficult to know exactly what one is looking at. This made me
decide to make a more readable version of this function. This one works
by essentially separating the values and putting them into their
respective strings-}

findVowels' :: String -> IO ()
findVowels' x =
  let upperAs = fst (findAllVowels x !! 0) :: Int
      lowerAs = snd (findAllVowels x !! 0) :: Int
      upperEs = fst (findAllVowels x !! 1) :: Int
      lowerEs = snd (findAllVowels x !! 1) :: Int
      upperIs = fst (findAllVowels x !! 2) :: Int
      lowerIs = snd (findAllVowels x !! 2) :: Int
      upperOs = fst (findAllVowels x !! 3) :: Int
      lowerOs = snd (findAllVowels x !! 3) :: Int
      upperUs = fst (findAllVowels x !! 4) :: Int
      lowerUs = snd (findAllVowels x !! 4) :: Int
      allVowels = upperAs + lowerAs + upperEs + lowerEs + upperIs +
                  lowerIs + upperOs + lowerOs + upperUs + lowerUs :: Int
      intToPercent x = 100 * (fromIntegral x) / fromIntegral allVowels
      intToPercent' = 100 * (fromIntegral allVowels) / fromIntegral (length x)
   in do putStrLn ("There are " ++ show upperAs ++ " counts of 'A'")
         putStrLn ("There are " ++ show lowerAs ++ " counts of 'a'")
         putStrLn ("The letter 'A' totals: " ++ show (intToPercent (upperAs + lowerAs)) ++ "% of all vowels")
         putStrLn ("There are " ++ show upperEs ++ " counts of 'E'")
         putStrLn ("There are " ++ show lowerEs ++ " counts of 'e'")
         putStrLn ("The letter 'E' totals: " ++ show (intToPercent (upperEs + lowerEs)) ++ "% of all vowels")
         putStrLn ("There are " ++ show upperIs ++ " counts of 'I'")
         putStrLn ("There are " ++ show lowerIs ++ " counts of 'i'")
         putStrLn ("The letter 'I' totals: " ++ show (intToPercent (upperIs + lowerIs)) ++ "% of all vowels")
         putStrLn ("There are " ++ show upperOs ++ " counts of 'O'")
         putStrLn ("There are " ++ show lowerOs ++ " counts of 'o'")
         putStrLn ("The letter 'O' totals: " ++ show (intToPercent (upperOs + lowerOs)) ++ "% of all vowels")
         putStrLn ("There are " ++ show upperUs ++ " counts of 'U'")
         putStrLn ("There are " ++ show lowerUs ++ " counts of 'u'")
         putStrLn ("The letter 'U' totals: " ++ show (intToPercent (upperUs + lowerUs)) ++ "% of all vowels")
         putStrLn ("\nIn all, there are " ++ show (allVowels) ++ " vowels out of " ++ show (length x)
          ++ " characters. Totalling " ++ show (intToPercent') ++ "% of all characters")
