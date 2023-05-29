pragma solidity ^0.5.0;

contract unOptimizedContract102 {
    uint public count;

    function increaseCounter() public {
        count++;
    }

    function decreaseCounter() public {
        count--;
    }
}