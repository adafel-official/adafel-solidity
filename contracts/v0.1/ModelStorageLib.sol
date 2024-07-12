//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "./interfaces/IModelStorage.sol";

library ModelStorageLib {
  struct ModelStorageInterface {
      address payable modelStorageAddress;
  }

  function addModel(ModelStorageInterface storage self, bytes memory _model, string memory _name) internal {
    IModelStorage(self.modelStorageAddress).addModel(_model, _name);
  }

  function getModel(ModelStorageInterface storage self, string memory _modelname) internal view returns (bytes memory) {
    return IModelStorage(self.modelStorageAddress).getModel(_modelname);
  }
}