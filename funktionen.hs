f x = x * x

g a b = a && b

add1 = 1
add2 = 2
add3 = 3

addAll = (add1, add2, add3)


minusEins :: Integer -> Integer
minusEins zahl = zahl - 1


min' :: Integer -> Integer -> Integer
min' zahl1 zahl2 =
    if zahl1 < zahl2
        then zahl1
        else zahl2

min'' :: Integer -> Integer -> Integer
min'' zahl1 zahl2
    | zahl1 < zahl2 = zahl1
    | otherwise = zahl2

max3 :: Integer -> Integer -> Integer -> Integer
max3 zahl1 zahl2 zahl3
    | zahl1 >= zahl2 && zahl1 >= zahl3 = zahl1
    | zahl2 >= zahl1 && zahl2 >= zahl3 = zahl2
    | otherwise = zahl3

ignoriere :: a -> Int
ignoriere _ = 0

schwachsinn :: Integer -> String -> Bool
schwachsinn zahl text =
    even zahl && odd (length text)

median3 zahl1 zahl2 zahl3
    | (zahl1 >= zahl2 && zahl1 <= zahl3)
      || (zahl1 >= zahl3 && zahl1 <= zahl2) = zahl1
    | (zahl2 >= zahl1 && zahl2 <= zahl3)
      || (zahl2 >= zahl3 && zahl2 <= zahl1) = zahl2
    | otherwise = zahl3


sumIfLargerProductElse zahl1 zahl2 =
    if zahl1 > zahl2
        then zahl1 + zahl2
        else zahl1 * zahl2

doubleOrTripleOrNothing zahl bool =
    | zahl > 0 && not bool = x*2
    | (zahl `mod` 100) == 0 && bool= x*3
    | otherwise = x

xor bool1 bool2 = bool1 /= bool2
