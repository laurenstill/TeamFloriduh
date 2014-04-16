
library(RSQLite)
#system("ls *.db", show=TRUE)

sqlite    <- dbDriver("SQLite")
exampledb <- dbConnect(sqlite,"florida.db")

dbListTables(exampledb)

cols	<- dbListFields(exampledb, "florida")



dat<-dbGetQuery(exampledb,
"
select f.hcpcs_description
	,f.state
	,f.city
	,f.payoutRate as frate
	,m.payoutRate as mrate
	,m.payoutRate - f.payoutRate as diffrate
	from (select nppes_provider_gender
		, hcpcs_description
		, nppes_provider_city as city
		, nppes_provider_state as state
		, avg(average_submitted_chrg_amt) as payoutRate
	from RawMedicareUtilData 
	where nppes_provider_gender = 'F'
	group by hcpcs_description,nppes_provider_gender,nppes_provider_city,nppes_provider_state
	) as f
inner join (select nppes_provider_gender
		, hcpcs_description
		, nppes_provider_city as city
		, nppes_provider_state as state
		, avg(average_submitted_chrg_amt) as payoutRate
	from RawMedicareUtilData 
	where nppes_provider_gender = 'M'
	group by hcpcs_description,nppes_provider_gender,nppes_provider_city,nppes_provider_state
	) as m
	on f.hcpcs_description = m.hcpcs_description
	and f.city  = m.city
	and f.state = m.state
"
)

#
# count the number of 
#
types <- dbGetQuery(exampledb,
"
select distinct hcpcs_description
from florida
order by hcpcs_description
"
)

cities <- dbGetQuery(exampledb,
"
select nppes_provider_city as city
	, count(distinct hcpcs_description) as numTypes
from florida
group by nppes_provider_city
order by count(distinct hcpcs_description) desc
"
)

providersPerProcedure <- dbGetQuery(exampledb, 
"
select nppes_provider_city as city
	, hcpcs_description as type
	, count(distinct npi) as numProviders
from florida
group by nppes_provider_city, hcpcs_description
"
)



