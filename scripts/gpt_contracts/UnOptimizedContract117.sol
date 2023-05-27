pragma solidity ^0.5.0;

contract unOptimizedContract117 {
    
    //Variables
    uint public counter;
    address public owner;
    
    //Constructor
    constructor() public {
        counter = 0;
        owner = msg.sender;
    }
    
    //Public Functions
    function incrementCounter() public {
        counter++;
    }
    
    //Getter Functions
    function getCounter() public view returns (uint) {
        return counter;
    }
    
    function getOwner() public view returns (address) {
        return owner;
    }
}