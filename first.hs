import System.Win32 (COORD(x))
tripleMe x = x + x + x

tripleUs x y = tripleMe x + tripleMe y

tripleWithSmall x = if x > 100
    then x
    else tripleMe x