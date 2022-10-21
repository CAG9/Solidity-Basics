//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleBalance {

    address public myAddress;
    constructor(){
        myAddress = msg.sender;
    }

    function setMyBool() public view returns(uint _balance) {
        _balance = myAddress.balance;
        return _balance;
    }
}

