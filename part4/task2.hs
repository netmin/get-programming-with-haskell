sfOffice name = 
    if lastName < "L"
    then nameText ++ " P/O San Francisco st. Calofornia, 94111"
    else nameText ++ " P/O San Francisco state Calofornia, 94109"

  where lastName = snd name
        nameText = fst name ++ " " ++ lastName


nyOffice name = nameText ++ " :P/O New York state New York, 10013"
    where nameText = fst name ++ " " ++ snd name


renoOffice name = nameText ++ " P/O 456 Rino state Nevada 89523"
    where nameText = snd name


waOffice name = "Dear " ++ nameText ++ " P/O Washington D.C. state Columbia 20001"
    where nameText = fst name ++ " " ++ snd name


getLocationFunc location = case location of
    "ny" -> nyOffice
    "sf" -> sfOffice
    "reno" -> renoOffice
    "wa" -> waOffice
    _ -> (\name -> fst name ++ " " ++ snd name)


addressLetter name location = locationFunc name
    where locationFunc = getLocationFunc location
