//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// Mapping
// declaration of simple and nested mapping
// Operations : set, get, delete

contract Mapping {

    uint public bal;
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function Operations() external {
        balances[msg.sender] = 1234;
        bal = balances[msg.sender];
        uint val = balances[address(1)];
        balances[msg.sender] += 20;

        delete balances[msg.sender];

        isFriend[msg.sender][address(this)] = true;
    }

    // function get() external view returns(uint)
    // {
    //     return bal;
    // }
}