module ChapterCode where

data Trivial = Trivial

instance Eq Trivial where
  Trivial == Trivial = True

f x = x + 2
