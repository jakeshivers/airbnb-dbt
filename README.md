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

### install dbt
1. Ensure your 