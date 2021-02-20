Set Procedure To "BancaItaliaApiClass.prg"
oBancaItalia = CreateObject("BancaItaliaApi")

&& Esempi per richieste più comuni
* Elenco delle valute
ListaValute = oBancaItalia.ListCurrencies('it')
        
* Tasso di cambio di oggi
TassoCambio = oBancaItalia.DailyExchangeRates('2021-02-01', 'EUR', 'USD', 'it')

&& Esempi con lista completa funzioni

* Variabili usate negli esempi
DataCambio	= '2020-01-01'
ValutaFrom	= 'USD'
ValutaTo 	= 'EUR'
Lingua 		= 'it'
DataInizio	= '2020-01-01'
DataFine		= '2020-12-31'
MeseInizio	= '01'
MeseFine		= '12'
AnnoInizio	= '2000'
AnnoFine		= '2020'


UltimiCambi = oBancaItalia.LatestRates(Lingua)

CambiGiornalieri = oBancaItalia.DailyExchangeRates(DataCambio,ValutaFrom,ValutaTo,Lingua)	

CambiMediMensili = oBancaItalia.AverageMonthlyExchangeRates(MeseInizio,AnnoInizio,ValutaFrom,ValutaTo,Lingua)

CambiMediAnnuali = oBancaItalia.AnnualAverageExchangeRates(AnnoInizio,ValutaFrom,ValutaTo,Lingua)

CambiGiornalieriSerieStoriche = oBancaItalia.DailyExchangeRatesTimeSeries(DataInizio,DataFine,ValutaFrom,ValutaTo,Lingua)	

CambiMediMensiliSerieStoriche = oBancaItalia.MonthlyExchangeRatesTimeSeries(MeseInizio,AnnoInizio, MeseFine, AnnoFine, ValutaFrom,ValutaTo,Lingua)	

CambiMediAnnualiSerieStoriche = oBancaItalia.AnnualAverageExchangeRatesTimeSeries(AnnoInizio, AnnoFine, ValutaFrom,ValutaTo,Lingua)	

ElencoValute = oBancaItalia.ListCurrencies(Lingua)	

SUSPEND 
