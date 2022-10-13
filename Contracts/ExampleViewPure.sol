//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleMsgSender {
    
    uint public myStorageVariable;
    //view function can acces storage variables and acces variable out of the scope of the function cannot writen
    function getMyStorageVariable() public view returns(uint){
        return myStorageVariable;
    }
    // pure: only can call variables that are not storage variables or other pure fucntions 
    function getAddition(uint a, uint b) public pure returns(uint){
        return a+b;
    }
    //return are only mean for intracontract communications

    function setMyStorageVariable(uint _newvar) public returns(uint){
        myStorageVariable = _newvar;
        return _newvar;
    }


}
