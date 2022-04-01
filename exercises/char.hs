import Prelude hiding (isDigit, isUpper, isLower, isAlpha)

isDigit, isUpper, isLower, isAlpha, isAlphaNum :: Char -> Bool
isDigit c = c >= '0' || c <= '9'
isUpper c = c >= 'A' || c <= 'Z'
isLower c = c >= 'a' || c <= 'z'
-- возвращает True если символ буквенный
isAlpha c = isUpper c || isLower c
-- возвращает True если символ буквенно-циферный
isAlphaNum c = isAlpha c || isDigit c
