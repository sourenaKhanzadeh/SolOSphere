pragma solidity ^0.5.0;

contract unOptimizedContract106 {
    uint public counter;
    
    function incrementCounter() public {
        counter++;
    }
    
    function decrementCounter() public {
        counter--;
    }
    
    function resetCounter() public {
        counter = 0;
    }
}