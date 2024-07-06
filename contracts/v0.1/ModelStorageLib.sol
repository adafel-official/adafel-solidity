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

  function stakeAdafel(ModelStorageInterface storage self, address staker) external {
    IModelStorage(self.modelStorageAddress).stakeAdafel(staker);
  }

  function withDrawStakes(ModelStorageInterface storage self) external {
    IModelStorage(self.modelStorageAddress).withDrawStakes();
  }

  function getModel(ModelStorageInterface storage self, string memory _modelname) external view returns (bytes memory) {
    return IModelStorage(self.modelStorageAddress).getModel(_modelname);
  }
}