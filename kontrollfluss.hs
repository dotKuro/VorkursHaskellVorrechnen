abs' x =
    if x >= 0
        then x
        else -x

absIfEven x =
    if odd x
        then 0
        else if x >= 0
            then x
            else -x

absIfEven' x
    | odd x = 0
    | x >= 0 = x
    | otherwise = -x

note punkte
    | punkte >= 95 = 1.0
    | punkte >= 90 = 1.3
    | punkte >= 85 = 1.7
    | punkte >= 80 = 2.0
    | punkte >= 75 = 2.3
    | punkte >= 70 = 2.7
    | punkte >= 65 = 3.0
    | punkte >= 60 = 3.3
    | punkte >= 55 = 3.7
    | punkte >= 50 = 4.0
    | otherwise = 5.0

exp' x y
    | y < 0 = error "Zahl ist kleiner als 0"
    | y == 0 = 1
    | otherwise = (exp' x (y-1)) * x
