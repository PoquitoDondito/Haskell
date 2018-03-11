main :: IO ()
main = undefined

--Write a type signature
--1.
functionH :: [a] -> a
functionH (x:_) = x

functionC :: (Ord a, Ord b) => a -> b -> Bool
functionC = undefined

functionS :: (a, b) -> b
functionS = undefined

i :: a -> a
i a = a

c :: a -> b -> a
c x y = x

c'' :: b -> a -> b
c'' x y = x

c' :: a -> b -> b
c' x y = y

r :: [a] -> [a]
r x = x
r x = reverse x


co :: (b -> c) -> (a -> b) -> a -> c
co f g x = let
               zebra = g x
               unicorn = f zebra
            in unicorn

a :: (a -> c) -> a -> a
a x y = y

a' :: (a -> b) -> a -> b
a' f x = f x


--Type Kwon Do
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h x = g $ f x


data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e x = w $ q x


data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x, y) = (xz x, yz y)

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge f g x = fst (g (f x))
