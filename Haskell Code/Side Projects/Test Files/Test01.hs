module Test01 where


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
  let upperAs = fst (findAllVowels x !! 0)
      lowerAs = snd (findAllVowels x !! 0)
      upperEs = fst (findAllVowels x !! 1)
      lowerEs = snd (findAllVowels x !! 1)
      upperIs = fst (findAllVowels x !! 2)
      lowerIs = snd (findAllVowels x !! 2)
      upperOs = fst (findAllVowels x !! 3)
      lowerOs = snd (findAllVowels x !! 3)
      upperUs = fst (findAllVowels x !! 4)
      lowerUs = snd (findAllVowels x !! 4)
   in do putStr ("\nThere are " ++ show upperAs ++ " counts of 'A'")
         putStr ("\nThere are " ++ show lowerAs ++ " counts of 'a'")
         putStr ("\nThere are " ++ show upperEs ++ " counts of 'E'")
         putStr ("\nThere are " ++ show lowerEs ++ " counts of 'e'")
         putStr ("\nThere are " ++ show upperIs ++ " counts of 'I'")
         putStr ("\nThere are " ++ show lowerIs ++ " counts of 'i'")
         putStr ("\nThere are " ++ show upperOs ++ " counts of 'O'")
         putStr ("\nThere are " ++ show lowerOs ++ " counts of 'o'")
         putStr ("\nThere are " ++ show upperUs ++ " counts of 'U'")
         putStr ("\nThere are " ++ show lowerUs ++ " counts of 'u'\n")
