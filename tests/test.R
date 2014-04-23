
library(RSQLite)
#system("ls *.db", show=TRUE)

sqlite    <- dbDriver("SQLite")
exampledb <- dbConnect(sqlite,"test.db")

dbListTables(exampledb)

cols	<- dbListFields(exampledb, "RawMedicareUtilData")


#select distinct hcpcs_description from hcpcsDescription where hcpcs_description like 'X-ray%' order by hcpcs_description asc;

dat<-dbGetQuery(exampledb,
"select nppes_provider_state as state
	,avg(average_Medicare_allowed_amt) as medallowed
	,avg(average_submitted_chrg_amt) as avgsub
	,avg(average_Medicare_payment_amt) as avgpayed
	from RawMedicareUtilData 
	where hcpcs_description like 'X-ray%' 
	group by nppes_provider_state
	order by avg(average_Medicare_payment_amt) desc"
)



plot(dat$medallowed,ylim=c(0,300),type='l')
lines(dat$avgpayed,col='blue')
lines(dat$avgsub,col='red')

cat(mean(dat$avgpayed/dat$medallowed),fill=T)
cat(sd(dat$avgpayed/dat$medallowed),fill=T)

