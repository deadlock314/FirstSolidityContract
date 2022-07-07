// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7; 

import "./DataStorageContract.sol";

contract DataStorageHub {

    mapping (string => DataStorageContract) public DataStorageMap;

   function createNewContract( string memory _name) public {

       DataStorageContract DataStorageContractInstance = new DataStorageContract();
       DataStorageMap[_name]= DataStorageContractInstance;

   }

   function getInstanceStatus( string memory _name, string memory _uniqueId) public view returns (bool) {
       return DataStorageMap[_name].getStatus(_uniqueId);

   }

     function setInstanceStatus( string memory _name, string memory _uniqueId ,bool _status) public {
     DataStorageMap[_name].setStatus(_uniqueId,_status);

   }

}
