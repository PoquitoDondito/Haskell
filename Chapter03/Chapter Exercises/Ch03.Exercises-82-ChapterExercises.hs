--Reading syntax

--1.
--For the following lines of code, read the syntax carefully and decide if they
--are written correctly. Test them in your REPL after you've decided to check
--your work. Correct as many as you can.

--a)
-- concat [[1, 2, 3], [4, 5, 6]]
--Answer: Code written correctly

--b)
-- ++ [1, 2, 3] [4, 5, 6]
--Answer: Code written incorrectly
(++) [1, 2, 3] [4, 5, 6]
--or
[1, 2, 3] ++ [4, 5, 6]

--c)
-- (++) "hello" " world"
--Answer: Code written correctly

--d)
-- ["hello" ++ " world]
--Answer: Code written incorrectly (unless typo)
["hello" ++ " world"]

--e)
-- 4 !! "hello"
--Answer: Code written incorrectly
"hello" !! 4

--f)
-- (!!) "hello" 4
--Answer: Code written correctly

--g)
-- take "4 lovely"
--Answer: Code written incorrectly
take 4 "lovely"

--h)
-- take 3 "awesome"
--Answer: Code written correctly

--2.
--Next we have two sets: the first set is lines of code and the other is a set
--of results. Read the code and figure out which results came from which lines
--of code.  Be sure to test them in the REPL.

--Code sets

--A)
-- concat [[1 * 6], [2 * 6], [3 * 6]]
--B)
-- "rain" ++ drop 2 "elbow"
--C)
-- 10 * head [1,2,3]
--D)
-- (take 3 "Julie") ++ (tail "yes")
--E)
-- concat [tail [1,2,3],
          tail [4,5,6],
          tail [7,8,9]]

--Result sets

--a)
-- "Jules"
--b)
-- [2,3,5,6,8,9]
--c)
-- "rainbow"
--d)
-- [6,12,18]
--e)
--10

--Answers
Code set A corresponds to d
Code set B corresponds to c
Code set C corresponds to e
Code set D corresponds to a
Code set E corresponds to b

--Building functions

--1.
--given the list-manipulation functions mentioned in this chapter, write
--functions that take the following inputs and return the expected outputs. Do
--them directly in your REPL and use the take and drop functions you've already
--seen
--Example
--If you apply your function to this value:
-- "Hello World"
--Your function should return:
-- "ello World"
--The following would be a fine solution:
-- Prelude> drop 1 "Hello World"
-- "ello World"
--Now write expressions to perform the following transformations, just with the
--functions you've seen in this chapter. You do not need to do anything clever
--here.

--a)
-- Given
-- "Curry is awesome"
-- Return
-- "Curry is awesome!"
--Answer:
"Curry is awesome" ++ "!"

--b)
-- Given
-- "Curry is awesome!"
-- Return
-- "y"
--Answer:
"Curry is awesome!" !! 4

--c)
-- Given
-- "Curry is awesome!"
-- Return
-- "awesome!"
--Answer:
drop 9 "Curry is awesome!"

--3.
--Write a function of type String -> Char which returns the third character in a
--String. Remember to give the function a name and apply it to a variable, not a
--specific String, so that it could be reused for different String inputs, as
--demonstrated (feel free to name the function something else. Be sure to fill
--in the type signature and fill in the function definition after the equals
--sign)
--thirdLetter  ::
--thirdLetter x =

-- If you can apply your function to this value:
--"Curry is awesome"
-- Your function should return
`r'

--Note that programming languages conventionally start indexing things by zero,
--so getting the zeroth index of a string will get you the first letter.
--Accordingly, indexing with 3 will actually get you the fourth. Keep this in
--mind as you write this function.
--Answer:
thirdLetter  :: String -> IO ()
thirdLetter x = putStrLn [(x !! 2)]

--4.
--Now change that function so the string operated on is always the same and the
--variable represents the number of the letter you want to return (you can use
--“Curry is awesome!” as your string input or a different string if you prefer).
--letterIndex  :: Int -> Char
--letterIndex x =
--Answer:
letterIndex  :: Int -> Char
letterIndex x = putStrLn ["Curry is awesome" !! x]

--5.
--Using the take and drop functions we looked at above, see if you can write a
--function called rvrs (an abbreviation of 'revers' used because there is a
--function called 'reverse' already in Prelude, so if you call your function the
--same name, you'll get an error message). rvrs should take the string "Curry is
--awesome" and return the result "awesome is Curry." This may not be the most
--lovely Haskell code you will ever write, but it is quite possible using only
--what we've learned so far. First write it as a single function in a source
--file. This doesn't need to, and shouldn't, work for reversing the words of any
--sentence. You're expected only to slice and dice this particular string with
--take and drop.
--Answer:
rvrs = putStrLn $ (drop 9 "Curry is awesome") ++
                  (take 4 $ drop 5 "Curry is awesome") ++
                  (take 5 "Curry is awesome") ++ "."

--6.
--Let's see if we can expand that function into a module. Why would we want to?
--By expanding it into a module, we can add more functions later that can
--interac with each other. We can also then export it to other modules if we
--want to and use this code in those other modules. There are different ways you
--could lay it out, but for the sake of convenience, we'll show you a simple
--layout so that you can fill in the blanks:

--module Reverse where
--rvrs :: String -> String
--rvrs x =
--main :: IO ()
--main = print ()

--Into the parentheses after print you'll need to fill in your function name
--rvrs plus the argument you're applying to, in this case "Curry is awesome."
--That rvrs function plus its argument are now the argument to print. It's
--important to put them inside the parentheses so that the function gets applied
--and evaluated first, and then that result is printed. Of course we have also
--mentioned that you can use the $ symbol to avoid using parentheses, too. Try
--modifying your main function to use that instead of the parentheses.
--Answer:
module Reverse where

rvrs :: String -> String
rvrs x = (drop 9 x) ++
         (take 4 $ drop 5 x) ++
         (take 5 x) ++ "."

main :: IO ()
main = print (rvrs "Curry is awesome")
