module IsFamily where

realFamilyMembers :: [String]
realFamilyMembers = ["David", "Joseph", "Bryant", "Michael",
                     "Seth", "Daniel", "Mom", "Dad"]

isFam :: String -> Bool
isFam x = x `elem` realFamilyMembers
