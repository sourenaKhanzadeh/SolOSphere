pragma solidity ^0.6.0;

contract unOptimizedContract60 {
    // Define the state variables
    uint public count;

    // Define the constructor
    constructor() public {
        count = 0;
    }

    // Define the function to increment the count
    function increment() public {
        count++;
    }
}