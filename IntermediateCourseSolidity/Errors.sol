// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Errors {
    uint public Threshold;

    constructor(uint _val) {
        Threshold = _val;
    }

    function Require(uint i) public view{
        require(Threshold < i, "Input is not greater than Threshold");
    }

    function Revert(uint i) public view{
        if(i < Threshold)
        {
            revert("Input is less than needed");
        }
    }

    uint public n;
    function Assert() public view{
        assert(n == 0);
    }
}