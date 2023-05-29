pragma solidity ^0.5.0;

// unOptimizedContract47
contract unOptimizedContract47 {
    // State variable to store the value
    uint256 public value;

    // Constructor to set the initial value
    constructor() public {
        value = 0;
    }

    // Function to increment the value
    function increment() public {
        value++;
    }

    // Function to decrement the value
    function decrement() public {
        value--;
    }

    // Function to reset the value
    function reset() public {
        value = 0;
    }
}