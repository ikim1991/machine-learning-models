# Neural Network Model

Implementation of the Neural Network Models are built and trained on Octave.
   - [Feed-forward Propagation](./fpNN.m)
   - [Feed-backward Propagation](./bpNN.m)

## Feed-forward Propagation

To run the model, run the command `fpNN` on Octave and making sure that you are on the correct working directory to successfully run the program.

The [Handwritten Digits Dataset](./handWrittenDigits.mat) contains training examples of handwritten digits.

We run our neural network model with a provided set of [weights](./weights.mat), using feed-forward propagation to [predict](./predict.m) and classify a handwritten digit from 0 to 9.

## Feed-backward Propagation

To run the model, run the command `bpNN` on Octave and making sure that you are on the correct working directory to successfully run the program.

The [Handwritten Digits Dataset](./handWrittenDigits.mat) contains training examples of handwritten digits.

Using feed-backward propagation we train the optimize set of weights, Theta1 and Theta2 parameters. Setting up the [cost function and gradient terms](./nnCostFunction.m) and using the provided [optimizer function fmincg](./fmincg.m) to fit our model. It should be noted that the initialization of the weights need to be [randomized](./randInitializeWeights.m) to break symmetry. Using the trained model, we are able to [predict](./predictBP.m) handwritten digits from 0 to 9 to a high level of accuracy.
