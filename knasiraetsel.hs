knasiIstWahrsager = False
knesiIstWahrsager = True
knosiIstWahrsager = False

aussage1 :: Bool
aussage1 = (not knasiIstWahrsager && not (not knasiIstWahrsager
                                      && not knesiIstWahrsager
                                      && not knosiIstWahrsager))

aussage2 = (knesiIstWahrsager && genauer_einer)
    || (not knesiIstWahrsager && not genauer_einer)

genauer_einer =
    (knasiIstWahrsager
    && not knesiIstWahrsager
    && not knosiIstWahrsager) ||
    (not knasiIstWahrsager
    && knesiIstWahrsager
    && not knosiIstWahrsager) ||
    (not knasiIstWahrsager
    && not knesiIstWahrsager
    && knosiIstWahrsager)

raetsel = aussage1 && aussage2
