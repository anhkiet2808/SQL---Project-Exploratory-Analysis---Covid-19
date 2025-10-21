-- Check if the table already exists. If it exists, drop it
if object_id ('covid.covid_deaths', 'U') is not null
	drop table covid.covid_deaths;

-- Create table covid_deaths
CREATE TABLE covid.covid_deaths (
	iso_code TEXT,
	continent TEXT,
	location TEXT,
	date TEXT,
	population BIGINT,
	total_cases BIGINT,
	new_cases BIGINT,
	new_cases_smoothed FLOAT,
	total_deaths FLOAT,
	new_deaths FLOAT,
	new_deaths_smoothed FLOAT,
	total_cases_per_million FLOAT,
	new_cases_per_million FLOAT,
	new_cases_smoothed_per_million FLOAT,
	total_deaths_per_million FLOAT,
	new_deaths_per_million FLOAT,
	new_deaths_smoothed_per_million FLOAT,
	reproduction_rate FLOAT,
	icu_patients FLOAT,
	icu_patients_per_million FLOAT,
	hosp_patients FLOAT,
	hosp_patients_per_million FLOAT,
	weekly_icu_admissions FLOAT,
	weekly_icu_admissions_per_million FLOAT,
	weekly_hosp_admissions FLOAT,
	weekly_hosp_admissions_per_million FLOAT
);

-- Check if the table already exists. If it exists, drop it
if object_id ('covid.covid_vaccination', 'U') is not null
	drop table covid.covid_vaccination;

-- Create table covid_vaccination
CREATE TABLE covid.covid_vaccination (
	iso_code TEXT,
	continent TEXT,
	location TEXT,
	date TEXT,
	new_tests BIGINT,
	total_tests BIGINT,
	total_tests_per_thousand FLOAT,
	new_tests_per_thousand FLOAT,
	new_tests_smoothed FLOAT,
	new_tests_smoothed_per_thousand FLOAT,
	positive_rate FLOAT,
	tests_per_case FLOAT,
	tests_units TEXT,
	total_vaccinations FLOAT,
	people_vaccinated FLOAT,
	people_fully_vaccinated FLOAT,
	new_vaccinations FLOAT,
	new_vaccinations_smoothed FLOAT,
	total_vaccinations_per_hundred FLOAT,
	people_vaccinated_per_hundred FLOAT,
	people_fully_vaccinated_per_hundred FLOAT,
	new_vaccinations_smoothed_per_million FLOAT,
	stringency_index FLOAT,
	population_density FLOAT,
	median_age FLOAT,
	aged_65_older FLOAT,
	aged_70_older FLOAT,
	gdp_per_capita FLOAT,
	extreme_poverty FLOAT,
	cardiovasc_death_rate FLOAT,
	diabetes_prevalence FLOAT,
	female_smokers FLOAT,
	male_smokers FLOAT,
	handwashing_facilities FLOAT,
	hospital_beds_per_thousand FLOAT,
	life_expectancy FLOAT,
	human_development_index FLOAT,
	excess_mortality FLOAT
);
