module ChapterExercises where

--Does it Typecheck?
--1.
data Person = Person Bool deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

--2.
data Mood = Blah | Woot deriving (Show, Eq, Ord)

settleDown :: Mood -> Mood
settleDown x = if x == Woot
                  then Blah
                  else x

--4.
type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

data Rocks = Rocks String deriving (Eq, Show, Ord)
data Yeah = Yeah Bool deriving (Eq, Show, Ord)
data Papu = Papu Rocks Yeah deriving (Eq, Show, Ord)

phew = Papu (Rocks "chomskydoz")
            (Yeah True)

equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

--Match the Types
-- 1.
i :: Num a => a
i = 1
--i :: a
--Cannot be done, since a is just a type variable and needs to have a
--typeclass to define it

-- 2.
f :: Fractional a => a
f = 1.0
--f :: Num a => a
--Cannot be done

-- 3.
--Works

-- 4.
--Works
