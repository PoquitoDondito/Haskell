module Test01 where

import Test02

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

findVowles' :: String -> IO ()
findVowles' x =
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
                  lowerIs + upperOs + lowerOs + upperUs + lowerUs
      intToPercent x = 100 * (fromIntegral x) / (fromIntegral allVowels)
   in do putStrLn ("There are " ++ show upperAs ++ " counts of 'A' | Totalling " ++ show (intToPercent upperAs) ++ "% of all vowels")
         putStrLn ("There are " ++ show lowerAs ++ " counts of 'a' | Totalling " ++ show (intToPercent lowerAs) ++ "% of all vowels")
         putStrLn ("There are " ++ show upperEs ++ " counts of 'E' | Totalling " ++ show (intToPercent upperEs) ++ "% of all vowels")
         putStrLn ("There are " ++ show lowerEs ++ " counts of 'e' | Totalling " ++ show (intToPercent lowerEs) ++ "% of all vowels")
         putStrLn ("There are " ++ show upperIs ++ " counts of 'I' | Totalling " ++ show (intToPercent upperIs) ++ "% of all vowels")
         putStrLn ("There are " ++ show lowerIs ++ " counts of 'i' | Totalling " ++ show (intToPercent lowerIs) ++ "% of all vowels")
         putStrLn ("There are " ++ show upperOs ++ " counts of 'O' | Totalling " ++ show (intToPercent upperOs) ++ "% of all vowels")
         putStrLn ("There are " ++ show lowerOs ++ " counts of 'o' | Totalling " ++ show (intToPercent lowerOs) ++ "% of all vowels")
         putStrLn ("There are " ++ show upperUs ++ " counts of 'U' | Totalling " ++ show (intToPercent upperUs) ++ "% of all vowels")
         putStrLn ("There are " ++ show lowerUs ++ " counts of 'u' | Totalling " ++ show (intToPercent lowerUs) ++ "% of all vowels")
         putStrLn ("In all, there are " ++ show (allVowels) ++ " vowels")
