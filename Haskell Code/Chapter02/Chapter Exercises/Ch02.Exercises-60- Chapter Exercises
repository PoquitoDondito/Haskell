--The goal for all the following exercises is just to get you playing with code
--and forming hypotheses about what it should do. Read the code carefully, using
--what we’ve learned so far. Generate a hypothesis about what you think the code
--will do. Play with it in the REPL and find out where you were right or wrong.

--Parenthesization
--Given what we know about the precedence of(*),(+), and(^), how can we
--parenthesize the following expressions more explicitly with-out changing their
--results?  Put together an answer you think is correct, then test in the GHCi
--REPL.

--1
-- 2 + 2 * 3 - 1
--Answer:
((2 + (2 * 3)) - 1)

--2
-- (^) 10 1 + 1
--Answer:
(^) 10 (1 + 1)

--3
-- 2 ^ 2 * 4 ^ 5 + 1
--Answer:
(((2 ^ 2) * (4 ^ 5)) + 1)

--Equivalent expressions
--Which of the following pairs of expressions will return the same result when
--evaluated? Try to reason them out in your head by reading the code and then
--enter them into the REPL to check your work:

--1
-- 1 + 1
-- 2
--Answer:
Return same result

--2
-- 10 ^ 2
-- 10 + 9 * 10
--Answer:
Return same result

--3
-- 400 - 37
-- (-) 37 400
--Answer:
Don't return the same result

--4
-- 100 `div` 3
-- 100 / 3
--Answer:
Return the same result

--5
-- 2 * 5 + 18
-- 2 * (5 + 18)
--Answer:
Don't return the same result

--More fun with functions
--Here is a bit of code as it might be entered into a source file. Remember that
--when you write code in a source file, the order is unimportant, but when
--writing code directly into the REPL the order does matter. Given that, look at
--this code and rewrite it such that it could be evaluated in the REPL
--(remember: you'll need let when entering it directly into the REPL). Be sure
--to enter your code into the REPL to make sure it evaluates correctly.
-- z = 7
-- x = y ^ 2
-- waxOn = x * 5
-- y = z + 8
--Answer:
let z = 7
let y = z + 8
let x = y ^ 2
let waxOn = x * 5

--1.
--Now you have a value called waxOn in your REPL. What do you think will happen
--if you enter:

-- 10 + waxOn
--Answer:
1135

--or
-- (+10) waxOn
--Answer:
1135

--or
-- (-) 15 waxOn
--Answer:
(-1110)

--or
-- (-) waxOn 15
--Answer:
1110

--2.
--Earlier we looked at a function called triple. While your REPL has waxOn in
--session, re-enter the triple function at the prompt:
-- let triple x = x * 3

--3.
--Now, what will happen if we enter this at our GHCi prompt. Try to reason out
--what you think will happen first, considering what role waxOn is playing in
--this function call. Then enter it, see what does happen, and check your
--understanding:
--Answer:
The waxOn will proceed as it already did. Then, the triple function takes waxOn
and the function replaces x for waxOn. This means that triple takes waxOn and
triples it.

--4.
--Rewrite waxOn as an expression with a where clause in your source file. Load
--it into your REPL and make sure it still works as expected!
--Answer:
waxOn = x * 5
 where
  z = 7
  y = z + 8
  x = y ^ 2

--5.
--Now to the same source file where you have waxOn, add the triple function.
--Remember: You don’t need let and the function name should be at the left
--margin (that is, not nested as one of the waxOn expressions). Make sure it
--works by loading it into your REPL and then entering triple waxOn again at the
--REPL prompt. You should have the same answer as you did above.
--Answer:
triple x = x * 3
3375

--6.
--Now, without changing what you’ve done so far in that file, add a new function
--called waxOff that looks like this:
-- waxOff x = triple x

--7.
--Load the source file into your REPL and enter waxOff waxOn at the prompt.
--You now have a function, waxOff that can be applied to a variety of arguments—
--not just waxOn but any (numeric) value you want to put in for x. Play with
--that a bit. What is the result of waxOff 10 or waxOff (-50)? Try modifying
--your waxOff function to do something new — perhaps you want to first triple
--the x value and then square it or divide it by 10. Just spend some time
--getting comfortable with modifying the source file code, reloading it, and
--checking your modification in the REPL.
