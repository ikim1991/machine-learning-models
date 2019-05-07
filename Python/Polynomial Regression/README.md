# Polynomial Regression Model

## Polynomial Linear Regression

Using Python and the scikit-learn library, we are able train and fit a polynomial linear regression model.
The [Position Salary Dataset](./Position_Salaries.csv) contains the level of a position and the salary at that level.
Using this data we train our [Polynomial Regression Model](./polynomial-regression.py) to predict the salary of an employee given their position level.

### Polynomial Regression Template

  1. Import libraries
    - Numpy
    - Pandas
    - Matplotlib
    - Scikit-learn

  2. Load [dataset](./Position_Salaries.csv) using Pandas

  3. Specific dataset does not require train/test set split

  4. Transform our feature X into polynomial features using Scikit-learn

  5. Fit and train model using linear regression model using Scikit-learn

  6. Predict using the trained model using Scikit-learn

  7. Visualize results using Matplotlib while using Numpy on our features to smooth out the curve

The 2 figures below shows and compares models fitted using Linear Regression and a Polynomial Regression.

![Linear Regression](./linear-regression.png)
![Polynomial Regression](./polynomial-regression.png)
