--Now for some exercises. First, determine in your head what the following
--expressions will return, then validate in the REPL:

--1
--let x = 5 in x
5
--2
--let x = 5 in x * x
25
--3
--let x = 5; y = 6 in x * y
30
--4
--let x = 3; y = 1000 in x + 3
3

--Rewrite with where clauses:
--1. let x = 3; y = 1000 in x * 3 + y
--Answer:
f        = x * 3 + y
 where x = 3
       y = 1000

--2. let y = 10; x = 10 * 5 + y in x * 5
--Answer:
f        = x * 5
 where y = 10
       x = 10 * 5 + y

--3. let x = 7; y = negate x; z = y * 10 in z / x + y
--Answer:
f      = z / x + y
 where x = 7
       y = negate x
       z = y * 10
