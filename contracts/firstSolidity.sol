// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7; //for supported version

contract FirstContract {

    //primitive types bool uint or uint32 64 128..256 ( unsigned int ,256 bit ) int address (wallet add ) bytes string

    //global var
    bool BooleanVal = true;

    int positiveOrNegtiveNum = -123;

    //default val 0
    int8 EightBitNum;

    uint positiveNum = 123;

    //by default variables are private there are four accessibility type public private internal external
    //public visible externally through this contract
    //private visible internally to this contract
    //internal visible to this contract and it's children contracts
    //external visible to anyone 

    address myWalletAdd = 0xE4A976FdEa6CAA37638a4554F3779663535af314;
    bytes32 anyNumOfByteData = "suppose name or file";

    //by default variables are internal there are four accessibility type public private internal external

    //by default get() function is created when use public keyword 
    string  Name= "solidity program";

    // general function def function keyword function name arguments access specifier(public) return value 

    function setID(uint num) public{
        positiveNum = num;
    }

    //view and pure function neither allow modification in contract's data nor spend gas  , gas is basically amount of computation in transaction

    function getID() public view returns (uint) {
        return positiveNum;
    }

    //user defind data types struct similar to c/cpp struct

    struct Employee {
        uint32 UniqueNum;
        string name;
    }

    //instance of Employee type
    Employee  employee1 = Employee({UniqueNum:7,name:"devesh"});
    Employee  employee2 = Employee({UniqueNum:11,name:"aarti"});

    //Array of Emloyees to make array just use [] after variable type in declaration
    //if [] used this specify dynamic array


    Employee[] public EmployeeArr;

    // function to add employee in our employee array

    function addEmployee(uint32 _UniqueNum ,string memory _name) public{
        Employee memory newEmployee = Employee({UniqueNum:_UniqueNum,name:_name});
        EmployeeArr.push(newEmployee);
    }

    //there are 6 storage location in solidity : stack , memory , storage , calldata , code , logs

    //mapping type similiar to map data structure or js object

    mapping(uint32 => string) public EmloyeeMap;

    // function to add employee in our employee map

    function addEmployeeInMap(uint32 _UniqueNum ,string memory _name) public{
        EmloyeeMap[_UniqueNum]=_name;
    }
}





