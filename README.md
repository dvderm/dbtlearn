# Notities dbt Data Build Tool

commando "dbt run" debuggen dmv van naar de scripts kijken die naar Snowflake gestuurd worden in folder ~/target/run/projectnaam/models/

seed: seeds are local files that you upload to the data warehouse using dbt. 
dbt seed: de files in de seed folder worden naar Snowflake ge-upload. 

source: data die al in het data warehouse zit. An abstraction on top of your input data. Sources can be defined in any .yaml file folder models. 
commando "dbt compile": checken of al je referenties e.d. correct zijn. 

snapshots: kunnen gebruikt worden om historie bij te houden scd2 style. Twee typen snapshot strategies beschikbaar:
    - timestamp: a unique que and an updated_at field is defined on the source model. These columns are used for determining changes. 
    - check: any change in a set of columns (or all columns) will be picked up as an update. 
commando "dbt snapshot": maakt snapshots

tests: los van custom tests (of tests van dbt packages), zijn er twee typen tests:
    - singular: sql queries die opgeslagen zijn in tests die een lege resultset moeten genereren.
    - generic: 4 typen: unique, not_null, accepted_values, relationships