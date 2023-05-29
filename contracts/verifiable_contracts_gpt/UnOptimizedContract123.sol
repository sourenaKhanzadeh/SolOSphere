pragma solidity ^0.5.0;

contract unOptimizedContract123 {
    
    uint public totalSupply;
    
    constructor() public {
        totalSupply = 0;
    }
    
    function incrementTotalSupply() public {
        totalSupply++;
    }
    
    function getTotalSupply() public view returns (uint) {
        return totalSupply;
    }
}