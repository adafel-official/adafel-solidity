//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

interface IDataStorage {
    enum Category {
        Gaming,
        Marketplace,
        Defi,
        Dao,
        Web3Social,
        Identity,
        Certificates
    }

    struct SchemaDetails {
        bytes32 schemaName;
        bytes32[] columns;
        Category schemaCategory;
        uint256 totalRecords;
    }

    struct Analytics {
        bytes32 schemaName;
        bytes32[] columns;
        Category schemaCategory;
        int64[][] data;
        mapping(address => uint256) addressToId;
        mapping(uint256 => address) idToAddress;
        mapping(bytes32 => uint256) columnToIndex;
    }

    event NewAnalytics(address user, address provider, uint256 category);

    event NewBatchAnalytics(address[] user, address provider, uint256 category);

    function addUser(address userAddress) external;

    function addSchema(
        bytes32 schemaName,
        bytes32[] calldata columns,
        Category category
    ) external;

    function addAnalytics(
        address payable userAddress,
        bytes32 schemaName,
        bytes32[] calldata columns,
        int64[] calldata data
    ) external payable;

    function addBatchAnalytics(
        address[] memory userAddresses,
        bytes32 schemaName,
        bytes32[] calldata columns,
        int64[][] calldata data
    ) external payable;

    function updateAnalytics(
        address payable userAddress,
        bytes32 schemaName,
        bytes32[] calldata columns,
        int64[] calldata data
    ) external payable;

    function updateUserReward(uint256 newReward) external;

    function getUserActivityMatrix() external view returns (uint256[][] memory);

    function getAllSchemas() external view returns (SchemaDetails[] memory);

    function getAnalyticsDataBySchemaName(
        bytes32 schemaName
    ) external view returns (int64[][] memory);

    function getColumnsOfSchema(
        bytes32 schemaName
    ) external view returns (bytes32[] memory);

    function getSchemaAddressToId(
        bytes32 schemaName,
        address userAddress
    ) external view returns (uint256);

    function getSchemaIdToAddress(
        bytes32 schemaName,
        uint256 userId
    ) external view returns (address);

    receive() external payable;
}
