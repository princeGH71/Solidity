//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract dynamicArr {
    uint[] nums;

    function push(uint val) external 
    {
        nums.push(val);
    }

    function returnArr() external view returns(uint[] memory)
    {
        return nums;
    }

    function update(uint i) external view returns(uint)
    {
        require(i < nums.length, "Out of bound");
        return nums[i];
    }

    function removeElem(uint i) external 
    {
        require(i < nums.length, "out of bound");
        delete nums[i];        
    }

    function removeShrink(uint index) external
    {
        require(index < nums.length, "out of bound");

        for(uint i = index; i < nums.length - 1; i++)
        {
            nums[i] = nums[i+1];
        }

        nums.pop();
    }

    function length() external view returns(uint)
    {
        return nums.length;
    }
}