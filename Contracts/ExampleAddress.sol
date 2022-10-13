//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleString {
    // 1 ETH = 10^8 wei - wei is the smallest denomination on the ethereum bloclchain
    address public someAddress;
    
    function setSomeAddress(address _someAddress) public {
        someAddress = _someAddress;
    }

    function getAddressBalance() public view returns(uint){
        return someAddress.balance;
    }
}
