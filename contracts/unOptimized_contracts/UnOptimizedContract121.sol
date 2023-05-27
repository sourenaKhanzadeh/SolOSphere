pragma solidity ^0.5.1;

contract unOptimizedContract121 {

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