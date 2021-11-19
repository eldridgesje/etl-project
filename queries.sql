-- Create tables for raw data to be loaded into
CREATE TABLE economy_size (
    country TEXT PRIMARY KEY,
    population_2019 FLOAT,
    surface_area_2019 FLOAT,
    population_density_2019 FLOAT,
    gross_national_income_atlas_method_2019 FLOAT,
    gross_national_income_per_capita_atlas_method_2019 FLOAT,
    purchasing_power_parity_gross_national_income_2019 FLOAT,
    per_capita_2019 FLOAT,
    gross_domestic_product_2019 FLOAT,
    per_capita_growth_2019 FLOAT
);

CREATE TABLE ending_poverty (
    country TEXT PRIMARY KEY,
    percentage_share_of_income_or_consumption_2007_18 FLOAT,
    prevalence_of_child_malnutrition_2020 FLOAT,
    maternal_mortality_ratio_2017 FLOAT,
    under_five_mortality_rate_2019 FLOAT,
    incidence_of_hiv_ages_15_49_per1000_2020 FLOAT,
    incidence_of_tuberculosis_2019 FLOAT,
    mortality_caused_by_road_traffic_injury_2016 FLOAT,
    primary_completion_rate_2018 FLOAT,
    vulnerable_employment_2019 FLOAT,
    contributing_family_workers_and_own_account_workers_female FLOAT,
    labor_productivity_2015_18 FLOAT
);

CREATE TABLE promoting_sustainability (
    country TEXT PRIMARY KEY,
    people_using_safely_managed_drinking_water_services_2017 FLOAT,
    people_using_safely_managed_sanitation_services_2017 FLOAT,
    access_to_electricity_2017 FLOAT,
    renewable_energy_consumption_2015 FLOAT,
    expenditures_for_rd_2015 FLOAT,
    urban_population_living_in_slums_2014 FLOAT,
    ambient_pm2_5_air_pollution_2016 FLOAT,
    adjusted_net_savings_2017 FLOAT,
    carbon_dioxide_emissions_2014 FLOAT,
    nationally_protected_terrestrial_and_marine_areas_2018 FLOAT,
    intentional_homicides_2015 FLOAT,
    internet_use_2017 FLOAT
);


-- Query to check successful load
SELECT * FROM economy_size;

SELECT * FROM ending_poverty;

SELECT * FROM promoting_sustainability;

-- Join tables
SELECT es.country, es.population_2019, es.gross_domestic_product_2019, ep.percentage_share_of_income_or_consumption_2007_18, ep.prevalence_of_child_malnutrition_2020, ep.under_five_mortality_rate_2019, ps.people_using_safely_managed_drinking_water_services_2017, ps.ambient_pm2_5_air_pollution_2016
FROM economy_size as es
INNER JOIN ending_poverty as ep
ON es.country = ep.country
INNER JOIN promoting_sustainability as ps
ON es.country = ps.country
;
