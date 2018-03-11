module EqInstances where

-- 1.
data TisAnInteger = TisAn Integer

foo :: TisAnInteger
foo = TisAn 5
bar :: TisAnInteger
bar = TisAn 10

instance Eq TisAnInteger where
  (==) (TisAn x) (TisAn y) = x == y

-- 2.
data TwoIntegers = Two Integer Integer
foo' :: TwoIntegers
foo' = Two 5 25
bar' :: TwoIntegers
bar' = Two 100 200

instance Eq TwoIntegers where
  (==) (Two a b) (Two c d) =
    a == c && b == d

-- 3.
data StringOrInt =
 TisAnInt Int | TisAString String

foo'' :: StringOrInt
foo'' = TisAnInt 5
bar'' :: StringOrInt
bar'' = TisAString ""

instance Eq StringOrInt where
  (TisAnInt a) == (TisAnInt b) = a == b
  (TisAString a) == (TisAString b) = a == b
  _ == _ = False

-- 4.
data Pair a =
  Pair a a

foo''' :: Pair Char
foo''' = Pair 'a' 'b'
bar''' :: Pair [Int]
bar''' = Pair [1, 2] [3, 4]

instance Eq a => Eq (Pair a) where
 (Pair a b) == (Pair c d) =
   a == c && b == d

-- 5.
data Tuple a b =
  Tuple a b

foo'''' :: Tuple Char Int
foo'''' = Tuple 't' 5
bar'''' :: Tuple Double String
bar'''' = Tuple 4.0 "Charmander"

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (Tuple a b) == (Tuple c d) = a == c && b == d

-- 6.
data Which a =
  ThisOne a | ThatOne a

foo''''' :: Which Double
foo''''' = ThisOne 5.0
bar''''' :: Which Double
bar''''' = ThatOne 17.4

instance Eq a => Eq (Which a) where
  (ThisOne a) == (ThisOne b) = a == b
  (ThatOne a) == (ThatOne b) = a == b
  _ == _ = False

-- 7.
data EitherOr a b =
  Hello a | Goodbye b

foo'''''' :: EitherOr Double Int
foo'''''' = Hello 3.1415
bar'''''' :: EitherOr Double Int
bar'''''' = Goodbye 5

instance (Eq a, Eq b) => Eq (EitherOr a b) where
 (Hello a) == (Hello b) = a == b
 (Goodbye a) == (Goodbye b) = a == b
 _ == _ = False

--Messing Around
data Tanks a = Sherman a | Matilda a deriving Eq

foo''''''' :: Tanks Integer
foo''''''' = Sherman 5
bar''''''' :: Tanks Integer
bar''''''' = Matilda 10
