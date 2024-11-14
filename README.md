# airbnb-dbt
### Organizing some AirBNB data with dbt. This project is something fun to learn the ropes of data build tool.
##Stack<br>
![image](https://github.com/user-attachments/assets/1d38c5a4-e462-4c93-a28e-2f0ea5047ff0)

##Requirements<br>
![image](https://github.com/user-attachments/assets/69ed6f90-accf-48d5-8b37-c360372e6194)


## dbt requirements
Dbt does not yet work with python 3.12. In order to proceed, you must setup a venv. It is also best practices to create a virtual environment for a given project so you're not using system wide installs and versions of a package.

Follow these steps:
1. Navigate to your working directory or create a new one.
2. In cmd, type
    ```bash
    $ pip install --upgrade virtualenv
    ```
3. Setup a separate environment
    ```bash
    $ virtualenv venv-dbt #name of your environment, it could be anything
    ```
4. Execute the following to activate your virtual environment
    ```bash
   venv\scripts\activate
    ```

You should now see the name of your virtual environment as a prefex infront of you commnad prompt.

## dbt features
<ul type="square">
    <li> dbt test
    <li> dbt documentation
        <dd><li> dbt docs generate</dd>
        <dd><li> dbt docs serve</dd>
    <li> dbt macros
    <li> dbt seed
</ul>

## dbt lineage<br>
![image](image.png)


## Exposures
Exposures allow you to embed a dashboard into your documentation.
The lineage view of your docs will allow you to see its dependencies if you enter them in the associated yaml file.


## Quality
This project uses `dbt-expectations`, a spinoff of Great Expectations, to do quality checks on each model.

## Logging
To implement custom logging, create a macro within the `macros` folder. Custom logs can be used to output messages to the terminal or to the `dbt.log` file.

## Dagster
Dagster is an excellent orchestration tool with an intuitive UI. It integrates seamlessly with dbt, making it a powerful solution for managing data workflows.

Important files in the Dagster implementation:

* `schedules.py` Creates schedules for Dagster jobs
* `definitions.py` includes a Definitions object that contains all the definitions defined within your project. A definition can be an asset, a job, a schedule, a sensor, or a resource. This allows Dagster to load the definitions in a module.


Run Dagser with this command:
```bash
    cd dbt_dagster_project
    DAGSTER_DBT_PARSE_PROJECT_ON_LOAD=1 dagster dev
```

![alt text](image-1.png)

Features:
* `Jobs` tab will display the job schedules
* `Sensors` can watch for new files in S3 buckets and kick off a run.