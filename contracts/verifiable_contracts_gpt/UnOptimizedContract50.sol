pragma solidity ^0.5.0;

contract unOptimizedContract50 {
    uint public counter;

    constructor() public {
        counter = 0;
    }

    function incrementCounter() public {
        counter++;
    }

    function decrementCounter() public {
        counter--;
    }
}