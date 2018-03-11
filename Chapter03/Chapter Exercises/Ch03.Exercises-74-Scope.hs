--1.
--These lines of code are from a REPL session. Is y in scope for x?
-- Prelude> let x = 5
-- Prelude> let y = 7
-- Prelude> let z = x * y
--Answer:
y is in scope for x

--2.
--These lines of code are from a REPL session. Is h in scope for function g? Go
--with your gut here.
-- Prelude> let f = 3
-- Prelude> let g = 6 * f + h
--Answer:
h is not in scope for g

--3.
--This code sample is from a source file. Is everything we need to execute area
--in scope?
-- area d = pi * (r * r)
-- r = d / 2
--Answer:
No, because d is local to area

--4.
--This code is also from a source file. Now are r and d in scope for area?
-- area d = pi * (r * r)
--    where r = d / 2
--Answer:
Yes
