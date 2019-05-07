# Import Libraries
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

dataset = pd.read_csv('Position_Salaries.csv')
X = dataset.iloc[:,1:2].values
y = dataset.iloc[:, -1].values

# Fitting the Decision Tree Model to our dataset
from sklearn.tree import DecisionTreeRegressor
regressor = DecisionTreeRegressor(random_state = 0)
regressor.fit(X, y)

# Predicting using our model
y_pred = regressor.predict([[6.5]])

# Visualizing the Decision Tree Regression
X_grid = np.arange(min(X), max(X),0.01)
X_grid = X_grid.reshape(len(X_grid), 1)
plt.scatter(X, y, color='r')
plt.plot(X_grid, regressor.predict(X_grid), color='b')
plt.title('Position Level vs. Salary (Decision Tree Model)')
plt.xlabel('Position Level')
plt.ylabel('Salary')
plt.show()
