import Prelude
import Data.Char ( ord, chr, isDigit )

-- 1.1
square :: Num a => a -> a
square x = x * x

-- 1.2

quad = square . square

-- 1.3
cube :: Float -> Float
cube x = x * x * x

--- 2.1
idInt :: Integer -> Integer
idInt x = x

idFloat :: Float -> Float
idFloat x = x

--2.6
myBuildLeft :: a -> [a] -> [a]
myBuildLeft x ls = x : ls

-- 2.7
-- Добавить в конец списка можно только другой список
myBuildRight :: a -> [a] -> [a]
myBuildRight x ls = ls ++ [x]

-- 2.8
smaller :: Ord p => (p, p) -> p
smaller (x, y) = if x > y then y else x

-- 2.9
smallBig :: Ord b => (b, b) -> (b, b)
smallBig (x, y) = if x > y then (y, x) else (x, y)

-- 2.7
greater :: Ord p => (p, p) -> p
greater (x, y) = if x < y then y else x

-- 3.1
sumOfLastTwoDigits :: Integral a => a -> a
sumOfLastTwoDigits x = 
    let d0 = x `mod` 10
        shift = x `mod` 10
        d1 = shift `div` 10
    in d0 + d1

sumOfLastTwoDigits' :: Integral a => a -> a
sumOfLastTwoDigits' x =  d0 + d1
    where 
        d0 = x `mod` 10
        shift = x `mod` 10
        d1 = shift `div` 10

-- 3.2
digitChar :: Int -> Char 
digitChar n = 
    case n >= 0 && n < 10 of
    True -> chr (n + ord '0')

charValue :: Char -> Int 
charValue c = case isDigit c of
    True -> ord c - ord '0'


