module CalendarStuff where
import Data.Time

danielBirthday :: Day
danielBirthday = ModifiedJulianDay 51927

addThreeDays :: Integer -> Day
addThreeDays x = addDays 3 (ModifiedJulianDay x)

daysAfterDanielBirth :: Integer -> Day
daysAfterDanielBirth x = addDays x danielBirthday

--enumFrom
