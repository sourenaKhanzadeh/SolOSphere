pragma solidity ^0.5.0;

contract unOptimizedContract112 {
    uint public counter;

    // Constructor
    constructor() public {
        counter = 0;
    }

    // Increment counter
    function incrementCounter() public {
        counter++;
    }

    // Get current counter value
    function getCounter() public view returns (uint) {
        return counter;
    }
}