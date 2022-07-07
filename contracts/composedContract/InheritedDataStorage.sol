// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./DataStorageContract.sol";

contract InheritedDataStorage is DataStorageContract{
    
    mapping (string => uint128)  ExtraDataMap;

    function getBalance(string memory _uniqueId) public view returns (uint128) {
        return ExtraDataMap[_uniqueId];
    }

     function setBalance(string memory _uniqueId , uint128 _balance) public {
        ExtraDataMap[_uniqueId]=_balance;

    }

}