# dbt assignment

Hereby the dbt assignment of Annemarie Burger.\
The database I choose is PostgreSQL. I choose this database since the given test_data.csv was structured data, and 
dbt has good integration with PostgreSQL. Lastly, I was already familiar with PostgreSQL, which would gain me time to 
get familiar with dbt. \
Steps to replicate the solution: 
* get a PostgreSQL database running, fill out the details at `profiles.yml`
* run `dbt seed` to populate the database with initial test_data table from the test_data.csv
* run `dbt build` to run and test the code. This will do 6 things: 
  * load seed 
  * create table purchases with cleaned data from seed
  * test purchases table on uniqueness of primary key (first column, originally named `id`, renamed to `purchase_id`)
  * test purchases table on not-null-ness of primary key
  * create view of monthly revenue per client. This filters on only purchases with status = 'COMPLETE'.
  * create view of monthly revenue per country. This also filters on only purchases with status = 'COMPLETE'. 
Both views also show the year. Although the test data is only covering 2024, this makes sure the view can also be used in the future, when more data might be added. 



