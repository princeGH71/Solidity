// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.6;

contract Voting{
    
    struct Candidate{
        uint id;
        string name;
        uint votes;
    }
    
    mapping (uint => Candidate) public candidates;
    uint public candidatecount;
    mapping (address => bool) public voters;
    
    constructor() public{
        addCandidate("Prince");
        addCandidate("Alice");
        addCandidate("Bob");
    }
    
    function addCandidate(string memory _name) private{
        candidatecount++;
        candidates[candidatecount] = Candidate(candidatecount, _name, 0);
    }
    
    function vote(uint _candidateid) public{
        require(!voters[msg.sender]);
        
        voters[msg.sender] = true;
        candidates[_candidateid].votes ++;
        
    }
}