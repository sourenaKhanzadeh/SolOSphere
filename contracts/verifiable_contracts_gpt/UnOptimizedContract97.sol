pragma solidity ^0.5.0;

contract unOptimizedContract97 {

    // Define internal variables
    uint public value;

    // Constructor
    constructor() public {
        value = 0;
    }

    // Increment value by one
    function incrementValue() public {
        value += 1;
    }

    // Decrement value by one
    function decrementValue() public {
        value -= 1;
    }
}