pragma solidity 0.5.8;

contract Election {
  // Read/write candidate, a state variable
  string public candidate;

  //constructor 
  constructor () public {
    candidate = "Candidate 1";
  }
}