import Prelude
import Data.Char ( ord, chr, isDigit )
import System.Win32 (COORD(x, y))

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


max' :: Ord p => p -> p -> p
max' x y 
    | x > y = x
    | otherwise = y

max'' x y = if x > y then x else y

maxThree :: Ord a => a -> a -> a -> a
maxThree x y z 
    | x > y && x > z = x
    | y > x && y > z = y
    | otherwise = z

maxThree' :: Ord a => a -> a -> a -> a
maxThree' x y z = max ( max x y ) z


-- 3.4
-- Почему то не работает
-- qq :: Int -> Int
-- qq (x + 4) = x - 3

-- 3.5
middle :: (a, b, c) -> b
middle (_, m, _) = m

-- 3.6
isOrder :: Ord a => [a] -> Bool
isOrder (x1:x2:x3) |x1 > x2 = True
isOrder _ = False 

sum' :: Num p => [p] -> p
sum' [] = 0
sum' (hd:tl) = hd + sum' tl

length' :: Num p => [a] -> p
length' [] = 0
length' (_:tl) = 1 + length' tl

-- 3.2
greater' x y 
    | x > y = x
    | otherwise = y

circleArea r = r * r * pi
    where pi = 22 / 7

-- 3.4
numberSol a b c 
    | d > 0 = 2
    | d == 0 = 1
    | otherwise = 0
    where d = b * b - 4 * a * c

-- 3.5
