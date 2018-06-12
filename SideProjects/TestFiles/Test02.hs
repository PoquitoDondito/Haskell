module Test02 where

import System.Time

newMinute = do
  x <- getClockTime
  if (take 2 $ drop 17 $ calendarTimeToString $ toUTCTime x) == "00"
    then return("The pineapples have successfully microwaved.")
    else (newMinute)
