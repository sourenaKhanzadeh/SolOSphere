pragma solidity ^0.5.0;

contract loops64 {
    // The storage variable for the counter
    uint256 public counter;

    // The constructor sets the initial value of counter to zero
    constructor() public {
        counter = 0;
    }

    // Increments the counter by 1
    function incrementCounter() public {
        counter++;
    }

    // This function runs a simple loop 64 times
    function runLoop() public {
        for (uint256 i = 0; i < 64; i++) {
            incrementCounter();
        }
    }
}