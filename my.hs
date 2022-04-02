{-

    Мои реализации функций

-}

-- Сумма всех чисел в списке
sumList :: Num p => [p] -> p
sumList l = if not (null l)
    then head l + sumList (tail l)
    else 0


