pragma solidity ^0.6.0;

contract unOptimizedContract75 {
    uint public counter;
    
    function increment() public {
        counter++;
    }
    
    function getCounter() public view returns (uint) {
        return counter;
    }
}