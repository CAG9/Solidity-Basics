//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleMsgSender {
    // The last who interact with the contract
    /* Account -> Contract 
            ^----- msg.sender
        Account -> Contract -> Contract
                        ^----- msg.sender
    */
    address public someAddress;

    function updateSomeAddress() public {
        someAddress = msg.sender;
    }
}

