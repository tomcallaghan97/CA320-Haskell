data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
           deriving (Enum,Show)
data Month = Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec
             deriving (Enum,Read)
type Date = (Int,Month,Int)

leap :: Int -> Bool

leap x
   | x `mod` 100 == 0 = x `mod` 400 == 0
   | x `mod` 4 == 0   = True
   | otherwise        = False


mLengths :: Int -> [Int]

mLengths x = [31,february,31,30,31,30,31,31,30,31,30,31]
             where
             february = if leap x 
             then 29 
             else 28
             
numDays :: Date -> Int
numDays (day,month,year)
    = day                                                               
      + sum (take (fromEnum month) (mLengths year))
      + (year-1753) * 365 + length [yr | yr <- [1753..year-1], leap yr]
      
                   
dayOfWeek :: Date -> Day
dayOfWeek d = toEnum (((numDays d)-1) `mod` 7)