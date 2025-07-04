// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;


import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorageContractVariable = new SimpleStorage();
       // SimpleStorage = new SimpleStorage();
       listOfSimpleStorageContracts.push(simpleStorageContractVariable);
    }

    function sfStore( uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //address
        //ABI
    //     SimpleStorage simpleStorageContractVariable = listOfSimpleStorageContracts[_simpleStorageIndex]; 
    //    address(simpleStorageContractVariable).call(abi.encodeWithSignature("store", _simpleStorageNumber));
        //listOfSimpleStorageContracts[_simpleStorageIndex].store(_simpleStorageNumber);
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_simpleStorageNumber);

    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
         // return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve()
         return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();

    }

}