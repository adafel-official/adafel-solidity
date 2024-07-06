# Adafel Solidity

The Adafel Solidity Library is a collection of functions for performing various machine learning tasks on the Adafel network. It leverages the built-in syscalls of the Adafel blockchain to enable training and prediction using different machine learning models directly on the smart contracts.

## Features

- **Linear Regression**: Train and predict using linear regression models.
- **Logistic Regression**: Train and predict using logistic regression models.
- **K-Nearest Neighbors (KNN)**: Train and predict using KNN regression and classification models.
- **Decision Tree**: Train and predict using decision tree regression and classification models.
- **Random Forest**: Train and predict using random forest regression and classification models.

## Installation

To use the Adafel Solidity Library, you need to install the necessary dependencies:

```bash
npm install @adafel/adafel-solidity
```

## Usage

### Training a model

To train a model, call the appropriate training function with your data and labels. For example, to train a linear regression model:

```bash
int64[][] memory data = ...; // Your training data
int64[] memory labels = ...; // Your training labels

bytes memory model = MachineLearningLib.trainLinearRegression(data, labels);
```

### Making Predictions

To make predictions using a trained model, call the appropriate prediction function with your data and the trained model. For example, to make predictions using a trained linear regression model:

```bash
int64[][] memory data = ...; // Your input data

int64[] memory predictions = MachineLearningLib.predictLinearRegression(data, model);
```
