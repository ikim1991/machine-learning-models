# Linear Regression Model

## Univariate Linear Regression

Using Python and the scikit-learn library, we are able train and fit a univariate linear regression model.
The [Salary Dataset](./Salary_Data.csv) contains years of experience and salary of an employee.
Using this data we train our [Univariate Linear Regression Model](./univariate.py) to predict an employee's salary based on their years of experience.

The figures below shows our test set and train set data against our predicted model.

![Test Set](./test-set.png)
![Train Set](./train-set.png)

## Multivariate Linear Regression

Using Python and the scikit-learn library, we are able train and fit a multivariate linear regression model. The [Startup Dataset](./50_Startups.csv) contains R&D Expense, Administration Expense, Marketing Expense, the State, and the Profit of different Startup companies.
Using this data we train our [Multivariate Linear Regression Model](./multivariate.py) to predict a company's profit based on the R&D expenses, Administration expenses, Marketing expenses and the State they operate in.

Using the Backward Elimination method we can find, which variables are most significant in predicting the profit and allows us to reduce the number of features used in our model.
