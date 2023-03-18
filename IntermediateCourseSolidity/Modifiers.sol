// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Modifier {
    uint public a;
    uint public b;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender == owner, "Only owner can access");
        _;
    }

    function set(uint _a, uint _b) public onlyOwner returns(uint) {
        a = _a;
        b = _b;

        uint sum = a + b;
        return sum;
    }
}