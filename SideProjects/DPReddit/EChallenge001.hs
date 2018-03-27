module Challenge where

{- https://www.reddit.com/r/dailyprogrammer/comments/pih8x/easy_challenge_1/ -}

echo = do
  (putStrLn "I'm going to repeat everything you tell me. What's your name?")
  x <- getLine
  (putStrLn "Okay, that's pretty difficult, but I'll manage, give me your age.")
  y <- getLine
  (putStrLn "Now give me your reddit username and I'll repeat everything back.")
  z <- getLine
  (putStrLn "I shall now BLOW YOUR MIND!")
  return ("your name is " ++ x ++
   ", you are " ++ y ++
   " years old, and your username is " ++ z)
