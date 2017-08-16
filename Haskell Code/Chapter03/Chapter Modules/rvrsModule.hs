module Reverse where

rvrs :: String -> String
rvrs x = (drop 9 "Curry is awesome") ++
         (take 4 $ drop 5 "Curry is awesome") ++
         (take 5 "Curry is awesome") ++ "."


main :: IO ()
main = print (rvrs "Curry is awesome")
