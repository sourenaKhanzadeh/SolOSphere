pragma solidity ^0.6.6;

contract unOptimizedContract103 {
    uint public value;

    constructor() public {
        value = 0;
    }

    function increaseValue() public {
        value += 1;
    }

    function decreaseValue() public {
        value -= 1;
    }
}