# **etl-project**
Repo for the ETL project for the Northwestern Data Science Bootcamp

# GROUP 9 MEMBERS

* Hai Pham
* Stephen Eldridge

# FILE LIST

* resources
    * `WV.1_Size_of_the_economy.xls` (original data file)
    * `WV.2_Global_goals_ending_poverty_and_improving_lives.xls` (original data file)
    * `WV.3_Global_goals_promoting_sustainability.xls` (original data file)
    * `WV1.csv` (work file)
    * `wv2.csv` (work file)
    * `WV3.csv` (work file)
    * `wv1_final.csv` (work file)
    * `wv2_final.csv` (work file)
    * `wv3_final.csv` (work file)
* `etl_notebook.ipynb` (Jupyter Notebook for ETL)
* `etl_technical_report.ipynb` (Jupyter Notebook containing the technical report)
* `queries.sql` (SQL file for creating and joining tables in postgres)

# STEPS FOR PERFORMING ETL USING THIS REPO

1. In **pgAdmin**, create a SQL database named `world_development_indicators`.

1. In **pgAdmin**, open the query editor and open the `queries.sql` file.

1. In **pdAgmin**, run the code under the header `Create tables for raw data to be loaded into`.

1. Create a `config.py` file

1. In your `config.py` file, add your **pgAdmin** username as `username` and password as `password`.

1. Save your `confi.py` file in the main `etl-project` folder.

1. Open `etl_notebook.ipynb` in **Jupyter Notebooks** and run all cells.

1. In **pgAdmin**, within `queries.sql`, run the code under the header `Join tables`.