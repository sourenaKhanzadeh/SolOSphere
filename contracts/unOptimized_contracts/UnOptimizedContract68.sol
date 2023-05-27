pragma solidity ^0.5.0;

contract unOptimizedContract68 {
    
    //Define state variables
    address public owner;
    uint public value;
    
    //Constructor
    constructor() public {
        owner = msg.sender;
    }
    
    //Function to set value
    function setValue(uint _value) public {
        require(msg.sender == owner);
        value = _value;
    }
    
    //Function to get value
    function getValue() public view returns (uint) {
        return value;
    }
    
    //Function to transfer ownership
    function transferOwnership(address newOwner) public {
        require(msg.sender == owner);
        owner = newOwner;
    }
}