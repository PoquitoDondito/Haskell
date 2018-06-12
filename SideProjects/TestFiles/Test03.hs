module Test03 where

import System.Random

french = do
  num <- randomRIO (0, 46) :: IO (Integer)
  echo num

answerLog inp fre = appendFile "Answers.txt" (fre ++ inp ++ "\n")
foo y z = do
  (putStrLn y)
  x <- getLine
  answerLog x y
  return z

echo x =
 case x of
  0 -> let
        fre = "0. malin, maligne"
        eng = ["smart", "clever", "malign", "evil"]
        in foo fre eng
  1 -> let
        fre = "1. la convoitise"
        eng = ["covetousness", "greed", "lust", "desire"]
        in foo fre eng
  2 -> let
        fre = "2. l'orgueil"
        eng = ["pride"]
        in foo fre eng

  3 -> let
        fre = "3. de la part de"
        eng = ["on behalf of", "from"]
        in foo fre eng
  4 -> let
        fre = "4. le mensonge"
        eng = ["lying", "lie"]
        in foo fre eng
  5 -> let
        fre = "5. nier"
        eng = ["to deny"]
        in foo fre eng
  6 -> let
        fre = "6. l’avènement"
        eng = ["advent", "coming"]
        in foo fre eng
  7 -> let
        fre = "7. confus"
        eng = ["confused", "embarrassed"]
        in foo fre eng
  8 -> let
        fre = "8. éloigné, éloignée"
        eng = ["distant", "far apart"]
        in foo fre eng
  9 -> let
        fre = "9. quiconque"
        eng = ["whoever", "anyone who", "anybody", "anyone"]
        in foo fre eng
  10 -> let
        fre = "10. tel que"
        eng = ["like", "such as"]
        in foo fre eng
  11 -> let
        fre = "11. ôter"
        eng = ["to take off", "remove"]
        in foo fre eng
  12 -> let
        fre = "12. détruire"
        eng = ["to destroy", "ruin"]
        in foo fre eng
  13 -> let
        fre = "13. la semence"
        eng = ["seed"]
        in foo fre eng
  14 -> let
        fre = "14. haïr"
        eng = ["to hate", "detest"]
        in foo fre
  15 -> let
        fre = "15. le meurtrier"
        eng = ["murderer"]
        in foo fre eng
  16 -> let
        fre = "16. fermer"
        eng = (["to close", "shut"])
        in foo fre eng
  17 -> let
        fre = "17. les entrailles")
        eng = (["bowels"])
        in foo fre
  18 -> let
        fre = "18. rassurer")
        eng = (["to reassure"])
        in foo fre eng
  19 -> let
        fre = "19. quoi que ce soit"
        eng = (["anything at all"])
        in foo fre eng
  20 -> let
        fre = "20. éprouver"
        eng = (["to test"])
        in foo fre
  21 -> let
        fre = "21. séduire"
        eng = (["to charm", "seduce"])
        in foo fre eng
  22 -> let
        fre = "22. la venue"
        eng = (["coming"])
        in foo fre eng
  23 -> let
        fre = "23. envers"
        eng = (["to", "toward"])
        in foo fre
  24 -> let
        fre = "24. contempler"
        eng = (["to contemplate", "gaze at"])
        in foo fre eng
  25 -> let
        fre = "25. rendre"
        eng = (["to give back", "return", "pronounce", "render", "produce"])
        in foo fre eng
  26 -> let
        fre = "26. manifester"
        eng = (["to show", "indicate", "express"])
        in foo fre
  27 -> let
        fre = "27. auprès de"
        eng = (["with", "near"])
        in foo fre eng
  28 -> let
        fre = "28. afin que"
        eng = (["so that", "in order that"])
        in foo fre eng
  29 -> let
        fre = "29. or, conj."
        eng = (["yet", "but", "now"])
        in foo fre
  30 -> let
        fre = "30. parfait, parfaite"
        eng = (["perfect", "fine", "excellent"])
        in foo fre eng
  31 -> let
        fre = "31. les ténèbres"
        eng = (["darkness"])
        in foo fre eng
  32 -> let
        fre = "32. la nouvelle"
        eng = (["news", "piece of news"])
        in foo fre
  33 -> let
        fre = "33. apprendre"
        eng = (["to learn", "hear"])
        in foo fre eng
  34 -> let
        fre = "34. mentir"
        eng = (["to lie"])
        in foo fre eng
  35 -> let
        fre = "35. mutuellement, adv."
        eng = ["each other", "one another"])
        in foo fre
  36 -> let
        fre = "36. séduire"
        eng = (["to charm", "seduce"])
        in foo fre eng
  37 -> let
        fre = "37. le / la avocat"
        eng = (["lawyer", "champion", "advocate"])
        in foo fre eng
  38 -> let
        fre = "38. expiatoire"
        eng = (["expiatory"])
        in foo fre
  39 -> let
        fre = "39. entier, entière"
        eng = (["whole", "entire", "complete"])
        in foo fre eng
  40 -> let
        fre = "40. par là"
        eng = (["that way", "by that"])
        in foo fre eng
  41 -> let
        fre = "41. ancien, ancienne"
        eng = (["old", "former", "ancient", "antique"])
        in foo fre eng
  42 -> let
        fre = "42. toutefois"
        eng = (["however"])
        in foo fre eng
  43 -> let
        fre = "43. déjà"
        eng = (["already"])
        in foo fre eng
  44 -> let
        fre = "44. paraître"
        eng = (["to be published", "come out", "show", "appear", "show off"])
        in foo fre eng
  45 -> let
        fre = "45. aucun, aucune"
        eng = (["no", "any"])
        in foo fre eng
  46 -> let
        fre = "46. la chute"
        eng = (["fall"])
        in foo fre eng

fullquiz = do
 echo 0
 echo 1
 echo 2
 echo 3
 echo 4
 echo 5
 echo 6
 echo 7
 echo 8
 echo 9
 echo 10
 echo 11
 echo 12
 echo 13
 echo 14
 echo 15
 echo 16
 echo 17
 echo 18
 echo 19
 echo 20
 echo 21
 echo 22
 echo 23
 echo 24
 echo 25
 echo 26
 echo 27
 echo 28
 echo 29
 echo 30
 echo 31
 echo 32
 echo 33
 echo 34
 echo 35
 echo 36
 echo 37
 echo 38
 echo 39
 echo 40
 echo 41
 echo 42
 echo 43
 echo 44
 echo 45
 echo 46
 return ()
