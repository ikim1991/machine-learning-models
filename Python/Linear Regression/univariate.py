# Simple Linear Regression Model

# Import Libraries
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Import Dataset
data = pd.read_csv('Salary_Data.csv')
X = data.iloc[:,:-1].values
y = data.iloc[:,-1].values

# Train/Test set split
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 1/3, random_state = 0)

# Training the Simple Linear Regression Model
from sklearn.linear_model import LinearRegression
regressor = LinearRegression()
regressor.fit(X_train, y_train)

# Predict using Test Set
y_pred = regressor.predict(X_test)

# Visualize the Training Set
plt.scatter(X_train, y_train, color='r')
plt.plot(X_train, regressor.predict(X_train), color='b')
plt.xlabel('Years Experience') 
plt.ylabel('Salary')
plt.title('Salary vs. Experience (Train set)')
plt.show()

# Visualize the Test Set
plt.scatter(X_test, y_test, color='r')
plt.plot(X_train, regressor.predict(X_train), color='b')
plt.xlabel('Years Experience') 
plt.ylabel('Salary')
plt.title('Salary vs. Experience (Test set)')
plt.show()