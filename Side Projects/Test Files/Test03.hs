module Test03 where

import System.Random

foo :: IO Char
foo = randomRIO ('a', 'z' :: Char)
