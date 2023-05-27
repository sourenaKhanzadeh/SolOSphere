pragma solidity ^0.5.0;

contract loops98 {
    // Declare a variable to track the number of iterations
    uint256 public iterationCount;
    
    constructor() public {
        iterationCount = 0;
    }
    
    // Function to start the loop
    function startLoop(uint256 _max) public {
        iterationCount = 0;
        while(iterationCount < _max) {
            iterationCount++;
        }
    }
}