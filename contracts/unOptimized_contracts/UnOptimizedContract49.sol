pragma solidity ^0.7.0;

contract unOptimizedContract49 {
    // Initialize a public variable to store a value
    uint public value;
    
    // Constructor to set the initial value
    constructor() public {
        value = 0;
    }
    
    // Function to set the value
    function setValue(uint _value) public {
        value = _value;
    }
    
    // Function to get the value
    function getValue() public view returns (uint) {
        return value;
    }
}