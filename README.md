# SQL
Data is spread across 3 tables, representing a hierarchy of region information in Canada.
### Countrylist
is the list of countries
### Provinces
is the list of states/provinces
### Regionlist
it contains a link of smaller regions having multiple levels of hierarchy.
It could be 3 levels(country->province->city) or more (country->province->city->region->regionid->...->point_of_interest)

## Write a SQL statement that returns exactly one row with columns:
region_id, region_name, province_name, province_code, country_name,country_code for any given region_id.
