import Data.Char
offset = ord 'A' - ord 'a'

capitalize ch = if isLower ch then chr (ord ch + offset) else ch
