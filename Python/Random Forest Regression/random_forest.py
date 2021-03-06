# Import Libraries
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Import Dataset
dataset = pd.read_csv('Position_Salaries.csv')
X = dataset.iloc[:,1].values.reshape(-1, 1)
y = dataset.iloc[:,-1].values.reshape(-1, 1)

# Fitting Random Forest Regression to dataset
from sklearn.ensemble import RandomForestRegressor
regressor = RandomForestRegressor(n_estimators=300, random_state = 0)
regressor.fit(X, y)

# Predicting using fitted model
y_pred = regressor.predict([[6.5]])

# Visualize the regression model results
X_grid = np.arange(min(X), max(X), 0.01)
X_grid = X_grid.reshape((len(X_grid), 1))
plt.scatter(X, y, color='r')
plt.plot(X_grid, regressor.predict(X_grid), color='b')
plt.title('Position vs. Salary (Random Forest Regression')
plt.xlabel('Position Level')
plt.ylabel('Salary')
plt.show()