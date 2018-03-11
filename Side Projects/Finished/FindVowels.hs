module FindVowels where

import Data.List

filter2 :: Eq a => (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filter2 x y z = filter x z ++ filter y z

{-This is just a caller function which runs all the other functions,
useful because I don't want to just call this huge list constantly-}
findAllVowels :: String -> [Int]
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
findAllAs :: String -> Int
findAllAs x = length (filter2 (=='a') (=='A') x)
findAllEs :: String -> Int
findAllEs x = length (filter2 (=='e') (=='E') x)
findAllIs :: String -> Int
findAllIs x = length (filter2 (=='i') (=='I') x)
findAllOs :: String -> Int
findAllOs x = length (filter2 (=='o') (=='O') x)
findAllUs :: String -> Int
findAllUs x = length (filter2 (=='u') (=='U') x)

{-Without knowing exactly the order of the tuples in the above function,
it is difficult to know exactly what one is looking at. This made me
decide to make a more readable version of this function. This one works
by essentially separating the values and putting them into their
respective strings-}

findVowels' :: String -> IO ()
findVowels' x =
  let allAs = findAllVowels x !! 0 :: Int
      allEs = findAllVowels x !! 1 :: Int
      allIs = findAllVowels x !! 2 :: Int
      allOs = findAllVowels x !! 3 :: Int
      allUs = findAllVowels x !! 4 :: Int
      allVowels = allAs + allEs + allIs + allOs +allUs :: Int
      intToPercent x = 100 * (fromIntegral x) / fromIntegral allVowels
      intToPercent' = 100 * (fromIntegral allVowels) / fromIntegral (length x)
   in do putStrLn ("There are " ++ show allAs ++ " count(s) of 'A'")
         putStrLn ("The letter 'A' totals: " ++ show (intToPercent allAs) ++ "% of all vowels")
         putStrLn ("There are " ++ show allEs ++ " count(s) of 'E'")
         putStrLn ("The letter 'E' totals: " ++ show (intToPercent allEs) ++ "% of all vowels")
         putStrLn ("There are " ++ show allIs ++ " count(s) of 'I'")
         putStrLn ("The letter 'I' totals: " ++ show (intToPercent allIs) ++ "% of all vowels")
         putStrLn ("There are " ++ show allOs ++ " count(s) of 'O'")
         putStrLn ("The letter 'O' totals: " ++ show (intToPercent allOs) ++ "% of all vowels")
         putStrLn ("There are " ++ show allUs ++ " count(s) of 'U'")
         putStrLn ("The letter 'U' totals: " ++ show (intToPercent allUs) ++ "% of all vowels")
         putStrLn ("\nIn all, there are " ++ show (allVowels) ++ " vowels out of " ++ show (length x)
          ++ " characters. Totalling " ++ show (intToPercent') ++ "% of all characters")
