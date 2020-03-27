-- f(x) = 2 + 4 + 6 + .... + (x-2) + x
--
-- f(x) = f(x-2) + x

summeGeradeZahlen zahl
    | zahl <= 0 || odd zahl = 0
    | otherwise = (summeGeradeZahlen (zahl-2)) + zahl

summeGeradeZahlen' zahl =
    if zahl <= 0 || odd zahl
        then 0
        else (summeGeradeZahlen' (zahl-2)) + zahl


{-
Startkapital = 800
400 Einzahlung pro Jahr
erste 20 Jahre 3% Zinsen
dananch 4%
-}

vermoegen jahr
    | jahr <= 0 = error "Das geht so nich!!!!!!1!!!"
    | jahr == 1 = 800
    | jahr > 21 = 400 + (1.04 * (vermoegen (jahr-1))) -- 4% Zinsen
    | otherwise = 400 + (1.03 * (vermoegen (jahr-1))) -- 3% Zinsen
