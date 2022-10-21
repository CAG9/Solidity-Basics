// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract StartStopUpdateExample {

    address owner;
    bool paused;

    constructor(){
        owner = msg.sender;
    }

    function sendMoney()public payable{

    }

    function withdrawAllMoney(address payable _to) public {
        require(msg.sender == owner, "You are not the owner");
        require(!paused, "The Smart contract is paused");
        _to.transfer(address(this).balance);
    }

    function serPaused(bool _paused) public{
        require(msg.sender == owner, "You are not the owner");
        paused =_paused;

    }

    function destroySmartContract(address payable _to) public {
        require(msg.sender == owner, "You are not the owner");
        selfdestruct(_to);
    }



}
