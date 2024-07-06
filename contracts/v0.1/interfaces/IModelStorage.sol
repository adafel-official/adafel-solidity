//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

interface IModelStorage {
  struct Model {
    address contributor;
    bytes model;
    string name;
  }

  function addModel(bytes memory _model, string memory _name) external;

  function stakeAdafel(address staker) external payable;

  function withDrawStakes() external;

  function getModel(string memory _modelname) external view returns (bytes memory);
}