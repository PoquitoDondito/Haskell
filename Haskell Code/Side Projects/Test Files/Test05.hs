module Test05 where

import Data.Complex

quadEquation :: Float -> Float -> Float -> (Float, Float)
quadEquation a b c = if d < 0 then error "0" else (x, y)
                        where
                          x = e + sqrt d / (2 * a)
                          y = e - sqrt d / (2 * a)
                          d = b * b - 4 * a * c
                          e = - b / (2 * a)

discriminantTest a b c =
  let x = (b^2 - 4*a*c) in
  if x `elem` enumFromTo 1 x
    then quadEquation a b c
    else
      case compare x 0 of
        LT -> quadEquationSpecial a b c
        GT -> quadEquation a b c
        EQ -> quadEquation a b c
