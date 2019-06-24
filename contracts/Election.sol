pragma solidity 0.5.8;

contract Election {
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }

  //Read/write Candidates
  mapping (uint => Candidate) public candidates;
  
  // Store Candidates Count since Solidity assigns 
  //default empty values to each key in mapping
  uint public candidatesCount;

  function addCandidate (string memory _name) private {
    candidatesCount++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }

  //constructor 
  constructor () public {
    addCandidate("Candidate 1");
    addCandidate("Candidate 2");
  }
}