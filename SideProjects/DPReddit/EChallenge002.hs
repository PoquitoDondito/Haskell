module Challenge where

dmsToDd :: Fractional a => a -> a -> a -> a
dmsToDd d m s = d + (m/60) + (s/360)

fma :: (Num a, Fractional a, Eq a) => a -> a -> a -> Either a String
fma f m a = case (f==0, m==0, a==0) of
      (True, False, False) -> Left (m*a)
      (False, True, False) -> Left (f/a)
      (False, False, True) -> Left (f/m)
      (_, _, _) -> Right ("Nope, you're supposed to only type in two inputs.")
