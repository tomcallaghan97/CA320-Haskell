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
             february = if leap x then 29 else 28