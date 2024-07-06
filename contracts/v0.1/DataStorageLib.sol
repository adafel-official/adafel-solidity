//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "./interfaces/IDataStorage.sol";

library DataStorageLib {
    struct DataStorageInterface {
        address payable dataStorageAddress;
    }

    function addUser(
        DataStorageInterface storage self,
        address userAddress
    ) internal {
        IDataStorage(self.dataStorageAddress).addUser(userAddress);
    }

    function addSchema(
        DataStorageInterface storage self,
        bytes32 schemaName,
        bytes32[] calldata columns,
        IDataStorage.Category category
    ) internal {
        IDataStorage(self.dataStorageAddress).addSchema(
            schemaName,
            columns,
            category
        );
    }

    function addAnalytics(
        DataStorageInterface storage self,
        address payable userAddress,
        bytes32 schemaName,
        bytes32[] calldata columns,
        int64[] calldata data
    ) internal {
        IDataStorage(self.dataStorageAddress).addAnalytics(
            userAddress,
            schemaName,
            columns,
            data
        );
    }

    function addBatchAnalytics(
        DataStorageInterface storage self,
        address[] memory userAddresses,
        bytes32 schemaName,
        bytes32[] calldata columns,
        int64[][] calldata data
    ) internal {
        IDataStorage(self.dataStorageAddress).addBatchAnalytics(
            userAddresses,
            schemaName,
            columns,
            data
        );
    }

    function updateAnalytics(
        DataStorageInterface storage self,
        address payable userAddress,
        bytes32 schemaName,
        bytes32[] calldata columns,
        int64[] calldata data
    ) internal {
        IDataStorage(self.dataStorageAddress).updateAnalytics(
            userAddress,
            schemaName,
            columns,
            data
        );
    }

    function getUserActivityMatrix(
        DataStorageInterface storage self
    ) internal view returns (uint256[][] memory) {
        return IDataStorage(self.dataStorageAddress).getUserActivityMatrix();
    }

    function getAllSchemas(
        DataStorageInterface storage self
    ) internal view returns (IDataStorage.SchemaDetails[] memory) {
        return IDataStorage(self.dataStorageAddress).getAllSchemas();
    }

    function getAnalyticsDataBySchemaName(
        DataStorageInterface storage self,
        bytes32 schemaName
    ) internal view returns (int64[][] memory) {
        return
            IDataStorage(self.dataStorageAddress).getAnalyticsDataBySchemaName(
                schemaName
            );
    }

    function getColumnsOfSchema(
        DataStorageInterface storage self,
        bytes32 schemaName
    ) internal view returns (bytes32[] memory) {
        return
            IDataStorage(self.dataStorageAddress).getColumnsOfSchema(
                schemaName
            );
    }

    function getSchemaAddressToId(
        DataStorageInterface storage self,
        bytes32 schemaName,
        address userAddress
    ) external view returns (uint256) {
        return
            IDataStorage(self.dataStorageAddress).getSchemaAddressToId(
                schemaName,
                userAddress
            );
    }

    function getSchemaIdToAddress(
        DataStorageInterface storage self,
        bytes32 schemaName,
        uint256 userId
    ) external view returns (address) {
        return
            IDataStorage(self.dataStorageAddress).getSchemaIdToAddress(
                schemaName,
                userId
            );
    }
}
