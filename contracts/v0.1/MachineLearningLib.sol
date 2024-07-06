// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.17;

import { CommonTypes } from "filecoin-solidity-api/contracts/v0.8/types/CommonTypes.sol";
import "filecoin-solidity-api/contracts/v0.8/utils/Actor.sol";
import "filecoin-solidity-api/contracts/v0.8/utils/CborDecode.sol";
import "solidity-cborutils/contracts/CBOR.sol";

library MachineLearningLib {
  using CBOR for CBOR.CBORBuffer;

  function trainLinearRegression(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    bytes memory params = _serializeTrainingInput(data, labels);

    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 2118579085, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  function predictLinearRegression(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    bytes memory params = _serializePredictionInput(data, model);
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3906916149, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  function trainLogisticRegression(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    bytes memory params = _serializeTrainingInput(data, labels);

    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 1646696726, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  function predictLogisticRegression(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    bytes memory params = _serializePredictionInput(data, model);
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3762305934, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  function trainKNNRegression(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    bytes memory params = _serializeTrainingInput(data, labels);

    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 2091347328, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  function predictKNNRegression(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    bytes memory params = _serializePredictionInput(data, model);
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3114267161, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  function trainKNNClassification(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    bytes memory params = _serializeTrainingInput(data, labels);

    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 958700693, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  function predictKNNClassification(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    bytes memory params = _serializePredictionInput(data, model);
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3748131007, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  function trainDecisionTreeRegression(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    bytes memory params = _serializeTrainingInput(data, labels);

    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 851076209, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  function predictDecisionTreeRegression(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    bytes memory params = _serializePredictionInput(data, model);
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3357014816, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  function trainDecisionTreeClassification(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    bytes memory params = _serializeTrainingInput(data, labels);

    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 4210161880, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  function predictDecisionTreeClassification(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    bytes memory params = _serializePredictionInput(data, model);
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3397745450, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  function trainRandomForestRegression(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    bytes memory params = _serializeTrainingInput(data, labels);

    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 3424383724, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  function predictRandomForestRegression(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    bytes memory params = _serializePredictionInput(data, model);
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 1937439469, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  function trainRandomForestClassification(int64[][] memory data, int64[] memory labels) internal returns (bytes memory) {
    bytes memory params = _serializeTrainingInput(data, labels);

    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 611876452, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    return return_value;
  }

  function predictRandomForestClassification(int64[][] memory data, bytes memory model) internal returns (int64[] memory) {
    bytes memory params = _serializePredictionInput(data, model);
    (int256 ret_code, bytes memory return_value) =
        Actor.callByID(CommonTypes.FilActorId.wrap(49), 2141575786, Misc.CBOR_CODEC, params, 0, false);

    require(ret_code == 0, "Machine learning actor failed");

    int64[] memory result = _deserializePredictionResult(return_value);
    return result;
  }

  function _serializeTrainingInput(int64[][] memory data, int64[] memory labels) private pure returns (bytes memory) {
    // have 256 as initial capacity
      CBOR.CBORBuffer memory buf = CBOR.create(256);
      buf.startFixedArray(2);
      
      buf.startFixedArray(uint64(data.length));
      for (uint64 i = 0; i < data.length; i++) {
        buf.startFixedArray(uint64(data[0].length));
        for (uint256 j = 0; j < data[0].length; j++) {
          buf.writeInt64(data[i][j]);
        }
      }
      
      buf.startFixedArray(uint64(labels.length));
      for (uint256 i = 0; i < labels.length; i++) {
        buf.writeInt64(labels[i]);
      }

      return buf.data();
  }

  function _serializePredictionInput(int64[][] memory data, bytes memory _model) private pure returns (bytes memory) {
    uint8[] memory model = _deserializeModel(_model);
      
    // have 256 as initial capacity
    CBOR.CBORBuffer memory buf = CBOR.create(256);
    buf.startFixedArray(2);

    buf.startFixedArray(uint64(data.length));
    for (uint64 i = 0; i < data.length; i++) {
      buf.startFixedArray(uint64(data[0].length));
      for (uint256 j = 0; j < data[0].length; j++) {
        buf.writeInt64(data[i][j]);
      }
    }

    buf.startFixedArray(uint64(model.length));

    for (uint64 i = 0; i < model.length; i++) {
      buf.writeUInt64(model[i]);
    }

    return buf.data();
  }

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