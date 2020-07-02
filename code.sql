select r.regionid region_id, r.regionname region_name, 
(select trim(substring_index(r.regionnamelong,',',-1))) country_name,
case
when (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1)))=any (select distinct province_name from provinces) then substring_index(substring_index(r.regionnamelong,',',-2),',',1)
end province_name,
case
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1))) = 'Alberta' then 'AB'
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1)))= 'British Columbia' then 'BC'
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1))) = 'Manitoba' then 'MB'
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1))) = 'New Brunswick' then 'NB'
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1))) = 'Newfoundland and Labrador' then 'NL'
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1))) = 'Northwest Territories' then 'NT'
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1))) = 'Nova Scotia' then 'NS'
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1))) = 'Nunavut' then 'NU'
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1))) = 'Ontario' then 'ON'
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1))) = 'Prince Edward Island' then 'PE'
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1))) = 'Quebec' then 'QC'
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1))) = 'Saskatchewan' then 'SK'
when  (select trim(substring_index(substring_index(r.regionnamelong,',',-2),',',1))) = 'Yukon' then 'YT'
end as province_code,
case 
when (select trim(substring_index(r.regionnamelong,',',-1)))='Canada' then 'CA'
end as country_code
from regionlist r;