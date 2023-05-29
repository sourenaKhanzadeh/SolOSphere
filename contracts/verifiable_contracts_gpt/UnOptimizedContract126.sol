pragma solidity ^0.5.0;

contract unOptimizedContract126 {
    
    // State variables
    uint public counter;
    
    // Constructor
    constructor() public {
        counter = 0;
    }
    
    // Increment function
    function incrementCounter() public {
        counter++;
    }
    
    // Decrement function
    function decrementCounter() public {
        counter--;
    }
    
    // Get counter function
    function getCounter() public view returns (uint) {
        return counter;
    }
}