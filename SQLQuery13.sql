USE BD_LEHKOVIE1;
GO 
EXEC DOGOVOR1_DOB
@VIN_NUMBER_TRADE='45672GHFJDI4',
@ID_CHELOVEK='456718-45627',
@VIN_NUMBER='RFG5622H89',
@PRICE_DOP='25000',
@PRICE= '1325000',
@DATA_DOG='01.01.2002'
SELECT*
FROM DOGOVOR;