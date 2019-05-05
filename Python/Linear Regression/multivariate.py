# Import Libaries
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Load Dataset
data = pd.read_csv('50_Startups.csv')
X = data.iloc[:,:-1].values
y = data.iloc[:,-1].values

# Encoding Categorical Data
from sklearn.preprocessing import LabelEncoder, OneHotEncoder
labelencoder_X = LabelEncoder()
X[:,3] = labelencoder_X.fit_transform(X[:,3])
onehotencoder = OneHotEncoder(categorical_features = [3])
X = onehotencoder.fit_transform(X).toarray()

# Taking into account for multicollinearity of the categorical data
X = X[:, 1:]

# Train/Test Split
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.2, random_state=0)

# Fit our Model to the Training Set
from sklearn.linear_model import LinearRegression
regressor = LinearRegression()
regressor.fit(X_train, y_train)

# Predict using Test Set
y_pred = regressor.predict(X_test)

# Building Optimal Model using Backward Elimination
import statsmodels.formula.api as sm

# Adding a column of ones
X = np.append(arr = np.ones((X.shape[0],1)).astype(int), values = X, axis=1)
X_opt = X[:, [0, 3]]

# Check P-values of each variable
regressor_OLS = sm.OLS(endog = y, exog = X_opt).fit()
regressor_OLS.summary()

