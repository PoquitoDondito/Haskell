module Test01 where

import Dictionary
import System.Directory
import Data.List
import Data.Char

--tig.txt

search y file = do
  x <- readFile file
  return (elemIndices y (words x))

searchIndex file = do
  x <- readFile file
  return (findIndices (`elem` fullDictionary) (words x))

searchWords file = do
  x <- readFile file
  return (filter (`elem` fullDictionary) (words x))

format file = do
  x <- readFile file
  return $ lines x
