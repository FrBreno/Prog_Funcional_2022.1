-- #01 Chekpoint
module HelloWorld (hello) where

hello :: String
hello = "Hello, World!"

-- #02 Chekpoint
module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

-- TODO: define the expectedMinutesInOven constant
    expectedMinutesInOven = 40
-- TODO: define the preparationTimeInMinutes function
    preparationTimeInMinutes x = x * 2
-- TODO: define the elapsedTimeInMinutes function
    elapsedTimeInMinutes x y = preparationTimeInMinutes x + y

-- #03 Chekpoint
module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year = year `mod` 4 == 0 && (year `mod` 100 /= 0 || (year `mod` 100 == 0 && year `mod` 400 == 0))

