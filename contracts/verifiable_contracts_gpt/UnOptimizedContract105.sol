pragma solidity ^0.5.11;

contract unOptimizedContract105 {
 
    // State Variables
    uint public counter;
 
    // Constructor
    constructor() public {
        counter = 0;
    }
 
    // Increment
    function incrementCounter() public {
        counter++;
    }
 
    // Decrement
    function decrementCounter() public {
        counter--;
    }
}