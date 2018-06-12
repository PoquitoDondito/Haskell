module Test03 where

import System.Random

french = do
  num <- randomRIO (0, 46) :: IO (Integer)
  echo num

fullquiz = do
 echo 0; echo 1; echo 2; echo 3; echo 4; echo 5; echo 6; echo 7; echo 8; echo 9;
 echo 10; echo 11; echo 12; echo 13; echo 14; echo 15; echo 16; echo 17;
 echo 18; echo 19; echo 20; echo 21; echo 22; echo 23; echo 24; echo 25;
 echo 26; echo 27; echo 28; echo 29; echo 30; echo 31; echo 32; echo 33;
 echo 34; echo 35; echo 36; echo 37; echo 38; echo 39; echo 40; echo 41;
 echo 42; echo 43; echo 44; echo 45; echo 46; return ()

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

  2 -> do (putStrLn "2. l'orgueil")
          input <- getLine
          appendFile "Answers.txt" ("2. l'orgueil | " ++ input ++ "\n")
          return (["pride"])

  3 -> do (putStrLn "3. de la part de")
          input <- getLine
          appendFile "Answers.txt" ("3. de la part de | " ++ input ++ "\n")
          return (["on behalf of", "from"])

  4 -> do (putStrLn "4. le mensonge")
          input <- getLine
          appendFile "Answers.txt" ("4. le mensonge | " ++ input ++ "\n")
          return (["lying", "lie"])

  5 -> do (putStrLn "5. nier")
          input <- getLine
          appendFile "Answers.txt" ("5. nier | " ++ input ++ "\n")
          return (["to deny"])

  6 -> do (putStrLn "6. l’avènement")
          input <- getLine
          appendFile "Answers.txt" ("6. l’avènement | " ++ input ++ "\n")
          return (["advent", "coming"])

  7 -> do (putStrLn "7. confus")
          input <- getLine
          appendFile "Answers.txt" ("7. confus | " ++ input ++ "\n")
          return (["confused", "embarrassed"])

  8 -> do (putStrLn "8. éloigné, éloignée")
          input <- getLine
          appendFile "Answers.txt" ("8. éloigné, éloignée | " ++ input ++ "\n")
          return (["distant", "far apart"])

  9 -> do (putStrLn "9. quiconque")
          input <- getLine
          appendFile "Answers.txt" ("9. quiconque | " ++ input ++ "\n")
          return (["whoever", "anyone who", "anybody", "anyone"])

  10 -> do (putStrLn "10. tel que")
           input <- getLine
           appendFile "Answers.txt" ("10. tel que | " ++ input ++ "\n")
           return (["like", "such as"])

  11 -> do (putStrLn "11. ôter")
           input <- getLine
           appendFile "Answers.txt" ("11. ôter | " ++ input ++ "\n")
           return (["to take off", "remove"])

  12 -> do (putStrLn "12. détruire")
           input <- getLine
           appendFile "Answers.txt" ("12. détruire | " ++ input ++ "\n")
           return (["to destroy", "ruin"])

  13 -> do (putStrLn "13. la semence")
           input <- getLine
           appendFile "Answers.txt" ("13. la semence | " ++ input ++ "\n")
           return (["seed"])

  14 -> do (putStrLn "14. haïr")
           input <- getLine
           appendFile "Answers.txt" ("14. haïr | " ++ input ++ "\n")
           return (["to hate", "detest"])

  15 -> do (putStrLn "15. le meurtrier")
           input <- getLine
           appendFile "Answers.txt" ("15. le meurtrier | " ++ input ++ "\n")
           return (["murderer"])

  16 -> do (putStrLn "16. fermer")
           input <- getLine
           appendFile "Answers.txt" ("16. fermer | " ++ input ++ "\n")
           return (["to close", "shut"])

  17 -> do (putStrLn "17. les entrailles")
           input <- getLine
           appendFile "Answers.txt" ("17. les entrailles | " ++ input ++ "\n")
           return (["bowels"])

  18 -> do (putStrLn "18. rassurer")
           input <- getLine
           appendFile "Answers.txt" ("18. rassurer | " ++ input ++ "\n")
           return (["to reassure"])

  19 -> do (putStrLn "19. quoi que ce soit")
           input <- getLine
           appendFile "Answers.txt" ("19. quoi que ce soit | " ++ input ++ "\n")
           return (["anything at all"])

  20 -> do (putStrLn "20. éprouver")
           input <- getLine
           appendFile "Answers.txt" ("20. éprouver | " ++ input ++ "\n")
           return (["to test"])

  21 -> do (putStrLn "21. séduire")
           input <- getLine
           appendFile "Answers.txt" ("21. séduire | " ++ input ++ "\n")
           return (["to charm", "seduce"])

  22 -> do (putStrLn "22. la venue")
           input <- getLine
           appendFile "Answers.txt" ("22. la venue | " ++ input ++ "\n")
           return (["coming"])

  23 -> do (putStrLn "23. envers")
           input <- getLine
           appendFile "Answers.txt" ("23. envers | " ++ input ++ "\n")
           return (["to", "toward"])

  24 -> do (putStrLn "24. contempler")
           input <- getLine
           appendFile "Answers.txt" ("24. contempler | " ++ input ++ "\n")
           return (["to contemplate", "gaze at"])

  25 -> do (putStrLn "25. rendre")
           input <- getLine
           appendFile "Answers.txt" ("25. rendre | " ++ input ++ "\n")
           return (["to give back", "return", "pronounce", "render", "produce"])

  26 -> do (putStrLn "26. manifester")
           input <- getLine
           appendFile "Answers.txt" ("26. manifester | " ++ input ++ "\n")
           return (["to show", "indicate", "express"])

  27 -> do (putStrLn "27. auprès de")
           input <- getLine
           appendFile "Answers.txt" ("27. auprès de | " ++ input ++ "\n")
           return (["with", "near"])

  28 -> do (putStrLn "28. afin que")
           input <- getLine
           appendFile "Answers.txt" ("28. afin que | " ++ input ++ "\n")
           return (["so that", "in order that"])

  29 -> do (putStrLn "29. or, conj.")
           input <- getLine
           appendFile "Answers.txt" ("29. or, conj. | " ++ input ++ "\n")
           return (["yet", "but", "now"])

  30 -> do (putStrLn "30. parfait, parfaite")
           input <- getLine
           appendFile "Answers.txt" ("30. parfait, parfaite | " ++ input ++ "\n")
           return (["perfect", "fine", "excellent"])

  31 -> do (putStrLn "31. les ténèbres")
           input <- getLine
           appendFile "Answers.txt" ("31. les ténèbres | " ++ input ++ "\n")
           return (["darkness"])

  32 -> do (putStrLn "32. la nouvelle")
           input <- getLine
           appendFile "Answers.txt" ("32. la nouvelle | " ++ input ++ "\n")
           return (["news", "piece of news"])

  33 -> do (putStrLn "33. apprendre")
           input <- getLine
           appendFile "Answers.txt" ("33. apprendre | " ++ input ++ "\n")
           return (["to learn", "hear"])

  34 -> do (putStrLn "34. mentir")
           input <- getLine
           appendFile "Answers.txt" ("34. mentir | " ++ input ++ "\n")
           return (["to lie"])

  35 -> do (putStrLn "35. mutuellement, adv.")
           input <- getLine
           appendFile "Answers.txt" ("35. mutuellement, adv. | " ++ input ++ "\n")
           return (["each other", "one another"])

  36 -> do (putStrLn "36. séduire")
           input <- getLine
           appendFile "Answers.txt" ("36. séduire | " ++ input ++ "\n")
           return (["to charm", "seduce"])

  37 -> do (putStrLn "37. le / la avocat")
           input <- getLine
           appendFile "Answers.txt" ("37. le / la avocat | " ++ input ++ "\n")
           return (["lawyer", "champion", "advocate"])

  38 -> do (putStrLn "38. expiatoire")
           input <- getLine
           appendFile "Answers.txt" ("38. expiatoire | " ++ input ++ "\n")
           return (["expiatory"])

  39 -> do (putStrLn "39. entier, entière")
           input <- getLine
           appendFile "Answers.txt" ("39. entier, entière | " ++ input ++ "\n")
           return (["whole", "entire", "complete"])

  40 -> do (putStrLn "40. par là")
           input <- getLine
           appendFile "Answers.txt" ("40. par là | " ++ input ++ "\n")
           return (["that way", "by that"])

  41 -> do (putStrLn "41. ancien, ancienne")
           input <- getLine
           appendFile "Answers.txt" ("41. ancien, ancienne | " ++ input ++ "\n")
           return (["old", "former", "ancient", "antique"])

  42 -> do (putStrLn "42. toutefois")
           input <- getLine
           appendFile "Answers.txt" ("41. toutefois | " ++ input ++ "\n")
           return (["however"])

  43 -> do (putStrLn "43. déjà")
           input <- getLine
           appendFile "Answers.txt" ("43. déjà | " ++ input ++ "\n")
           return (["already"])

  44 -> do (putStrLn "44. paraître")
           input <- getLine
           appendFile "Answers.txt" ("44. paraître | " ++ input ++ "\n")
           return (["to be published", "come out", "show", "appear", "show off"])

  45 -> do (putStrLn "45. aucun, aucune")
           input <- getLine
           appendFile "Answers.txt" ("45. aucun, aucune | " ++ input ++ "\n")
           return (["no", "any"])

  46 -> do (putStrLn "46. la chute")
           input <- getLine
           appendFile "Answers.txt" ("46. la chute | " ++ input ++ "\n")
           return (["fall"])
