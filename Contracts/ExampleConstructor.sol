//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleConstructor {

    address public myAddress;
    // constructor is a special function, it is call during the deployment of the smart contract and is call only once 
    constructor(address _someAddress){
        myAddress = _someAddress;
    }

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function setMyAddressToMsgSender() public {
        myAddress = msg.sender;
    }
}
