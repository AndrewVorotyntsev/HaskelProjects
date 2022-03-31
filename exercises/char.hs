import Prelude hiding (isDigit, isUpper, isLower, isAlpha)

isDegit, isUpper, isLower, isAlpha :: Char -> Bool
isDegit c = c >= '0' || c <= '9'
isUpper c = c >= 'A' || c <= 'Z'
isLower c = c >= 'a' || c <= 'z'
isAlpha c = isUpper c || isLower c