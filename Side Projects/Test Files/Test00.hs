module Test00 where

data TisAnInteger = TisAn Integer

foo :: TisAnInteger
foo = TisAn 5
bar :: TisAnInteger
bar = TisAn 10

instance Eq TisAnInteger where
  (==) (TisAn x) (TisAn y) = x == y

--TypeConstructor is the type you are defining

--data constructors can take typevaribles or other types
data TypeConstructor typevariables = DataConstructors

data Person = Person String Int

--function type declaration
david :: Person
--function implementation
david = Person "David" 5

bryant :: Person
bryant = Person "Bryant" 4

michael :: Person
michael = Person "Michael" 3

seth :: Person
seth = Person "Seth" 2

daniel :: Person
daniel = Person "Daniel" 1

instance Eq Person where
 (==) (Person nameOne ageOne) (Person nameTwo ageTwo) =
   (nameOne == nameTwo) && (ageOne == ageTwo)
