--Read the syntax of the following functions and decide whether it will compile.
--Test them in your REPL and try to fix the syntax errors where they occur.

--1.
-- ++ [1, 2, 3] [4, 5, 6]
--Answer: Code written incorrectly, should be:
(++) [1, 2, 3] [4, 5, 6]
--or
[1, 2, 3] ++ [4, 5, 6]

--2.
-- '<3' ++ ' Haskell'
--Answer: Code written incorrectly, should be:
"<3" ++ " Haskell"

--3.
-- concat ["<3", " Haskell"]
--Answer: Code written correctly
