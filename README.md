# Notities dbt Data Build Tool

commando "dbt run" debuggen dmv van naar de scripts kijken die naar Snowflake gestuurd worden in folder ~/target/run/projectnaam/models/
seed: seeds are local files that you upload to the data warehouse using dbt. 
dbt seed: de files in de seed folder worden naar Snowflake ge-upload. 
source: data die al in het data warehouse zit. An abstraction on top of your input data. Sources can be defined in any .yaml file folder models. 
commando "dbt compile": checken of al je referenties e.d. correct zijn. 