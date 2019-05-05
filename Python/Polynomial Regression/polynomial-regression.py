# Import Libraries
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Load Data
data = pd.read_csv('Position_Salaries.csv')
X = data.iloc[:,1:-1].values
y = data.iloc[:,-1].values

# Fit Linear Regression to Dataset
from sklearn.linear_model import LinearRegression
lin_reg = LinearRegression()
lin_reg.fit(X, y)

# Fitting Polynomial Regression to Dataset
from sklearn.preprocessing import PolynomialFeatures
poly_reg = PolynomialFeatures(degree = 4)
X_poly = poly_reg.fit_transform(X)
lin_reg2 = LinearRegression()
lin_reg2.fit(X_poly, y)

# Visualizing the Linear Regression Results
plt.scatter(X, y, color='r')
plt.plot(X, lin_reg.predict(X), color='b')
plt.xlabel('Position Level')
plt.ylabel('Salary')
plt.title('Position Level vs. Salary (Linear Regression)')
plt.show()

# Visualizing the Polynomial Regression Results
X_grid = np.arange(min(X), max(X), 0.1)
X_grid = X_grid.reshape((len(X_grid), 1))
plt.scatter(X, y, color='r')
plt.plot(X_grid, lin_reg2.predict(poly_reg.fit_transform(X_grid)), color='b')
plt.xlabel('Position Level')
plt.ylabel('Salary')
plt.title('Position Level vs. Salary (Polynomial Regression)')
plt.show()

 # Predicting a new result with Linear Regression
 lin_reg.predict([[6.5]])
 
 # Predicting a new result with Polynomial Regression
 lin_reg2.predict(poly_reg.fit_transform([[6.5]]))
 