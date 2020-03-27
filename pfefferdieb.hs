genau_einer hutmacher schnapphase haselmaus =
    (hutmacher && not schnapphase && not haselmaus)
    || (not hutmacher && schnapphase && not haselmaus)
    || (not hutmacher && not schnapphase && haselmaus)

aussage1 hutmacher schnapphase _ = schnapphase || (not hutmacher)
aussage2 hutmacher _ haselmaus = hutmacher || (not haselmaus)

raetsel hutmacher schnapphase haselmaus =
    genau_einer hutmacher schnapphase haselmaus
    && aussage1 hutmacher schnapphase haselmaus
    && aussage2 hutmacher schnapphase haselmaus
