print '>> Truncating Table: covid.covid_deaths';
truncate table covid.covid_deaths;

print '>> Inserting Table: covid.covid_deaths';
bulk insert covid.covid_deaths
from 'D:\Learning\SQL\SQL practice projects\Covid 19\covid_deaths.csv'
with (
	firstrow = 2,
	fieldterminator = ',',
	rowterminator = '\n',
	tablock,
    codepage = '65001' -- UTF-8 encoding
	
);

print '>> Truncating Table: covid.covid_vaccination';
truncate table covid.covid_vaccination;

print '>> Inserting Table: covid.covid_vaccination';
bulk insert covid.covid_vaccination
from 'D:\Learning\SQL\SQL practice projects\Covid 19\covid_vaccination.csv'
with (
	firstrow = 2,
	fieldterminator = ',',
	rowterminator = '\n',
	tablock,
    codepage = '65001' -- UTF-8 encoding
);
