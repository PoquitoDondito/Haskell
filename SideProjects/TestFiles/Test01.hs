module Test01 where

import System.Directory
import Data.Char

write x = do
  appendFile "Fun.txt" (show x)

display = do
  x <- readFile "Fun.txt"
  print x

clear = do
  writeFile "Fun.txt" ""
