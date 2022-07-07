// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7; //for supported version

contract DataStorageContract{

    mapping (string => bool)  DataMap;

    function getStatus(string memory _uniqueId) public view returns (bool) {
        return DataMap[_uniqueId];
    }

     function setStatus(string memory _uniqueId , bool _status) public {
         DataMap[_uniqueId]=_status;

    }
}