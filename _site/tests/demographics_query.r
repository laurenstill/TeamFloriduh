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
		, avg(1.*average_Medicare_payment_amt/average_Medicare_allowed_amt) as payoutRate
	from RawMedicareUtilData 
	group by hcpcs_description,nppes_provider_gender,nppes_provider_city,nppes_provider_state
	order by hcpcs_description,nppes_provider_gender) as f
inner join (select nppes_provider_gender
		, hcpcs_description
		, nppes_provider_city as city
		, nppes_provider_state as state
		, avg(1.*average_Medicare_payment_amt/average_Medicare_allowed_amt) as payoutRate
	from RawMedicareUtilData 
	group by hcpcs_description,nppes_provider_gender,nppes_provider_city,nppes_provider_state
	order by hcpcs_description,nppes_provider_gender) as m
	on f.hcpcs_description = m.hcpcs_description
	and f.city  = m.city
	and f.state = m.state
	and f.nppes_provider_gender = 'F'
	and m.nppes_provider_gender = 'M'
	and 100*abs( m.payoutRate - f.payoutRate) > 2.5
	order by f.hcpcs_description,f.state,f.city,m.payoutRate - f.payoutRate desc 
