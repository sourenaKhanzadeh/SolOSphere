pragma solidity ^0.5.0;

contract unOptimizedContract39 {
    uint public counter;
    
    function incrementCounter() public {
        counter++;
    }
    
    function getCounter() public view returns (uint) {
        return counter;
    }
}