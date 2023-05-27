pragma solidity ^0.5.0;

contract Loops86 {
    // Store the counter
    uint256 public counter;
    
    constructor() public {
        // Initialize the counter
        counter = 0;
    }
    
    // Generate the loop pattern
    function generatePattern() public {
        // Loop 10 times
        for (uint256 i = 0; i < 10; i++) {
            // Increment the counter
            counter++;
        }
    }
}