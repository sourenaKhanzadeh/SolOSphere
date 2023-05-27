pragma solidity ^0.6.0;

contract unOptimizedContract76 {
    
    uint public counter;
    
    constructor() public {
        counter = 0;
    }
    
    function incrementCounter() public {
        counter += 1;
    }
    
    function decrementCounter() public {
        counter -= 1;
    }
    
    function getCounter() public view returns (uint) {
        return counter;
    }
}