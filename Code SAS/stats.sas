%let path= C:\Users\Charles\OneDrive - Universit� de Poitiers\IRIAF\�tudes bilat�ral\�tude actuarielle\Codes Charles\Code SAS\;

/*Cr�ation de la librairie*/
libname ETUDE "&path.";
proc sql;
SELECT accYear, sum(pay) as total
FROM etude.dts_sinistres
GROUP BY accYear;
run;quit;
