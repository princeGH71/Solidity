// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract MessageContext {
    address payable public owner;
    uint public sum;

    constructor() payable{
        owner = payable(msg.sender);
        // sum = msg.value;
    }

    function Transfer(uint val, address payable person) public {
        person.transfer(val);
    }
}