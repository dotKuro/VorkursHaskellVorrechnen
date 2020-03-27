{-
Affe sagt:  Bär lügt

Bär sagt: Affe oder Chameleon lügt

Chameleon sagt: Affe und Bär lügen.

+--------------------+
| WER LÜGT DEN NUN?! |
+--------------------+
-}

affe_luegt = True
baer_luegt = True
chameleon_luegt = True


aussage1 = (baer_luegt && not affe_luegt) || (affe_luegt && not baer_luegt)

aussage2 = ((affe_luegt || chameleon_luegt) && not baer_luegt)
    || (baer_luegt && not (affe_luegt || chameleon_luegt))

aussage3 = ((affe_luegt && baer_luegt) && not chameleon_luegt)
    || (chameleon_luegt && not (affe_luegt && baer_luegt))

end_aussage = aussage1 && aussage2 && aussage3
