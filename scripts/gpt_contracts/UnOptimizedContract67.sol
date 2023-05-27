pragma solidity ^0.5.0;

contract unOptimizedContract67 {
    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
        owner = newOwner;
    }
    
    function doSomething() public returns (bool) {
        return true;
    }
}