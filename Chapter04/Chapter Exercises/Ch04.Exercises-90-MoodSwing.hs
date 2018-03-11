--Given the following datatype, answer the following quesitons:

data Mood = Blah | Woot deriving Show

--The deriving Show part is not something we've explained yet. For now, all
--we'll say is that when you make your own datatypes, deriving Show allows the
--values of that type to be printed to the screen. We'll talk about it more when
--we talk about typeclasses in detail.

--1.
--What is the type constructor, or name of this type?
--Answer: Mood

--2.
--If the function requires a Mood value, what are the values you could possibly
--use there?
--Answer:
Blah, Woot

--3.
--We are trying to write a function changeMood to change Chris's mood
--instantaneously. It should act like not in that, given one value, it returns
--the other value of the same type. So far, we've written a type signature
--changeMood :: Mood -> Woot.
--What's wrong with that?
--Answer:
Can't use a type constructor where you would use a data constructor, should be:
changeMood :: Mood -> Mood.

--4.
--Now we want to write the function that changes his mood. Given an input mood,
--it gives us the other one. Fix any mistakes and complete the function:

--changeMood Mood = Woot
--changeMood    _ = Blah

--We're doing something here called pattern matching. We can define a function
--by matching on a data constructor, or value, and describing the behavior the
--function should have based on which value it matches. The underscore in the
--second line denotes a catch-all, otherwise case. So in the first line of the
--function, we're telling it what to do in the case of a specific input. In the
--In the second one, we're telling it what to do regardless of all potential
--inputs. It's trivial when there are only two potential values of a given type,
--but as we deal with more complex cases, it can be convenient. We'll talk about
--pattern matching in greater detail in a later chapter.
--Answer:
changeMood Blah = Woot
changeMood Woot = Blah

--5.
--Enter all of the above - datatype (including the deriving show bit), your
--corrected type signature, and the corrected function into a source file. Load
--it and run it in GHCi to make sure you got it right:
--Answer:
Yeah, yeah, we got it right.
