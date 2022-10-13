//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract TheBlockchainMessenger{

    uint public changeCounter;
    address public owner;
    string public theMessage;
    address public recipient = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    constructor(){
        owner = msg.sender;
    }

    function updateTheMessage(string memory _newMessage) public{
        if(msg.sender == owner || msg.sender  == recipient){
            theMessage = _newMessage;
            changeCounter++;
        }

    }
}
