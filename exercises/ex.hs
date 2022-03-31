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
