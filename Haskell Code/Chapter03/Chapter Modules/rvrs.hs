rvrs = putStrLn $ (drop 9 "Curry is awesome") ++
                  (take 4 $ drop 5 "Curry is awesome") ++
                  (take 5 "Curry is awesome") ++ "."


--executing takes:
--"Curry is awesome"
--and returns:
--"awesome is Curry."
