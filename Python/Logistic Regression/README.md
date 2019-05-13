# Logistic Regression Model

## Logistic Regression

Using Python and the scikit-learn library, we are able train and fit a logistic regression model.
The [Social Network Ads Dataset](./Social_Network_Ads.csv) contains a customer's age, salary and whether or not they purchased the product.
Using this data we train our [Logistic Regression Model](./logistic_regression.py) to predict the probability of whether a customer will buy the product based on their age and salary.

### Logistic Regression Template

  1. Import libraries
      - Numpy
      - Pandas
      - Matplotlib
      - Scikit-learn

  2. Load [dataset](./Social_Network_Ads.csv) using Pandas

  3. Split dataset into Train/Test sets using Scikit-learn

  4. Implement feature scaling on the train and test sets

  5. Fit and train model using logistic regression model using Scikit-learn

  6. Predict test set with trained model using Scikit-learn

  7. Evaluate accuracy, precision, and recall of the model using a confusion matrix (Predicted vs. Actual)

  8. Visualize results using Matplotlib to plot the decision boundary of the model

The figures below shows the decision boundaries of the train set and test set data.

![Test Set](./decision_boundary(testset).png)
![Train Set](./decision_boundary(trainset).png)
