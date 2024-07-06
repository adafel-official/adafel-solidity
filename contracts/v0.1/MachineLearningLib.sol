// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.17;

import { CommonTypes } from "filecoin-solidity-api/contracts/v0.8/types/CommonTypes.sol";
import "filecoin-solidity-api/contracts/v0.8/utils/Actor.sol";
import "filecoin-solidity-api/contracts/v0.8/utils/CborDecode.sol";
import "solidity-cborutils/contracts/CBOR.sol";

// Library for Machine Learning functionalities
library MachineLearningLib {
  using CBOR for CBOR.CBORBuffer;

  // Function to train a linear regression model
  function trainLinearRegression(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    // Serialize training data and labels
    bytes memory params = _serializeTrainingInput(data, labels);

    // Call the actor's train function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 2118579085, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  // Function to make predictions using a trained linear regression model
  function predictLinearRegression(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    // Serialize prediction input data and model
    bytes memory params = _serializePredictionInput(data, model);

    // Call the actor's predict function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3906916149, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    // Deserialize and return the prediction results
    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  // Function to train a logistic regression model
  function trainLogisticRegression(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    // Serialize training data and labels
    bytes memory params = _serializeTrainingInput(data, labels);

    // Call the actor's train function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 1646696726, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  // Function to make predictions using a trained logistic regression model
  function predictLogisticRegression(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    // Serialize prediction input data and model
    bytes memory params = _serializePredictionInput(data, model);

    // Call the actor's predict function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3762305934, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    // Deserialize and return the prediction results
    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  // Function to train a K-Nearest Neighbors (KNN) regression model
  function trainKNNRegression(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    // Serialize training data and labels
    bytes memory params = _serializeTrainingInput(data, labels);

    // Call the actor's train function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 2091347328, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  // Function to make predictions using a trained KNN regression model
  function predictKNNRegression(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    // Serialize prediction input data and model
    bytes memory params = _serializePredictionInput(data, model);

    // Call the actor's predict function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3114267161, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    // Deserialize and return the prediction results
    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  // Function to train a KNN classification model
  function trainKNNClassification(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    // Serialize training data and labels
    bytes memory params = _serializeTrainingInput(data, labels);

    // Call the actor's train function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 958700693, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  // Function to make predictions using a trained KNN classification model
  function predictKNNClassification(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    // Serialize prediction input data and model
    bytes memory params = _serializePredictionInput(data, model);

    // Call the actor's predict function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3748131007, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    // Deserialize and return the prediction results
    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  // Function to train a Decision Tree regression model
  function trainDecisionTreeRegression(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    // Serialize training data and labels
    bytes memory params = _serializeTrainingInput(data, labels);

    // Call the actor's train function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 851076209, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  // Function to make predictions using a trained Decision Tree regression model
  function predictDecisionTreeRegression(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    // Serialize prediction input data and model
    bytes memory params = _serializePredictionInput(data, model);

    // Call the actor's predict function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3357014816, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    // Deserialize and return the prediction results
    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  // Function to train a Decision Tree classification model
  function trainDecisionTreeClassification(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    // Serialize training data and labels
    bytes memory params = _serializeTrainingInput(data, labels);

    // Call the actor's train function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 4210161880, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  // Function to make predictions using a trained Decision Tree classification model
  function predictDecisionTreeClassification(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    // Serialize prediction input data and model
    bytes memory params = _serializePredictionInput(data, model);

    // Call the actor's predict function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3397745450, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    // Deserialize and return the prediction results
    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  // Function to train a Random Forest regression model
  function trainRandomForestRegression(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    // Serialize training data and labels
    bytes memory params = _serializeTrainingInput(data, labels);

    // Call the actor's train function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3424383724, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  // Function to make predictions using a trained Random Forest regression model
  function predictRandomForestRegression(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    // Serialize prediction input data and model
    bytes memory params = _serializePredictionInput(data, model);

    // Call the actor's predict function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 1937439469, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    // Deserialize and return the prediction results
    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  // Function to train a Random Forest classification model
  function trainRandomForestClassification(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    // Serialize training data and labels
    bytes memory params = _serializeTrainingInput(data, labels);

    // Call the actor's train function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 611876452, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  // Function to make predictions using a trained Random Forest classification model
  function predictRandomForestClassification(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    // Serialize prediction input data and model
    bytes memory params = _serializePredictionInput(data, model);

    // Call the actor's predict function
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 2141575786, Misc.CBOR_CODEC, params, 0, false);

    // Ensure the actor call was successful
    require(ret_code == 0, "Machine learning actor failed");

    // Deserialize and return the prediction results
    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  // Helper function to serialize training input
  function _serializeTrainingInput(int64[][] memory data, int64[] memory labels) private pure returns (bytes memory) {
    // Initialize CBOR buffer with initial capacity of 256 bytes
    CBOR.CBORBuffer memory buf = CBOR.create(256);
    buf.startFixedArray(2);

    // Serialize data
    buf.startFixedArray(uint64(data.length));
    for (uint64 i = 0; i < data.length; i++) {
      buf.startFixedArray(uint64(data[0].length));
      for (uint256 j = 0; j < data[0].length; j++) {
        buf.writeInt64(data[i][j]);
      }
    }

    // Serialize labels
    buf.startFixedArray(uint64(labels.length));
    for (uint256 i = 0; i < labels.length; i++) {
      buf.writeInt64(labels[i]);
    }

    return buf.data();
  }

  // Helper function to serialize prediction input
  function _serializePredictionInput(int64[][] memory data, bytes memory _model) private pure returns (bytes memory) {
    uint8[] memory model = _deserializeModel(_model);

    // Initialize CBOR buffer with initial capacity of 256 bytes
    CBOR.CBORBuffer memory buf = CBOR.create(256);
    buf.startFixedArray(2);

    // Serialize data
    buf.startFixedArray(uint64(data.length));
    for (uint64 i = 0; i < data.length; i++) {
      buf.startFixedArray(uint64(data[0].length));
      for (uint256 j = 0; j < data[0].length; j++) {
        buf.writeInt64(data[i][j]);
      }
    }

    // Serialize model
    buf.startFixedArray(uint64(model.length));
    for (uint64 i = 0; i < model.length; i++) {
      buf.writeUInt64(model[i]);
    }

    return buf.data();
  }

  // Helper function to deserialize prediction result
  function _deserializePredictionResult(bytes memory actor_result) private pure returns (int64[] memory) {
    (uint256 len, uint256 byteIdx) = CBORDecoder.readFixedArray(actor_result, 0);

    int64[] memory result = new int64[](len);
    for (uint256 i = 0; i < len; i++) {
      (int64 item, uint256 idx) = CBORDecoder.readInt64(actor_result, byteIdx);

      result[i] = item;
      byteIdx = idx;
    }

    return result;
  }

  // Helper function to deserialize model
  function _deserializeModel(bytes memory model) private pure returns (uint8[] memory) {
    (uint256 len, uint256 byteIdx) = CBORDecoder.readFixedArray(model, 0);

    uint8[] memory result = new uint8[](len);
    for (uint256 i = 0; i < len; i++) {
      (uint8 item, uint256 idx) = CBORDecoder.readUInt8(model, byteIdx);

      result[i] = item;
      byteIdx = idx;
    }

    return result;
  }
}
