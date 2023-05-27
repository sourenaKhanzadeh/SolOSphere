pragma solidity ^0.5.0;

contract unOptimizedContract104 {
    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
        owner = newOwner;
    }
    
    function doSomething() public {
        // Do something
    }
    
    function doSomethingElse() public {
        // Do something else
    }
}