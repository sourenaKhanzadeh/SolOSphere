pragma solidity ^0.5.0;

contract unOptimizedContract124 {
    uint public counter;
    address public owner;
    
    constructor() public {
        owner = msg.sender;
        counter = 0;
    }
    
    function incrementCounter() public {
        counter++;
    }
    
    function decrementCounter() public {
        counter--;
    }
    
    function getCounter() public view returns (uint) {
        return counter;
    }
    
    function getOwner() public view returns (address) {
        return owner;
    }
    
    function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
        owner = newOwner;
    }
}