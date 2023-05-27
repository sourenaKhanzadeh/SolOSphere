pragma solidity ^0.5.0;

contract unOptimizedContract40 {
  
    uint public x;
    
    constructor() public {
        x = 0;
    }
    
    function increment() public {
        x++;
    }
    
    function decrement() public {
        x--;
    }
    
    function getX() public view returns (uint) {
        return x;
    }

}