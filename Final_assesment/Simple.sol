// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ReadWrite {

    uint num;

    function get() public view returns(uint)
    {
        // reading value
        return num;
    }

    function set(uint _num) public
    {
        num = _num;
    }
}