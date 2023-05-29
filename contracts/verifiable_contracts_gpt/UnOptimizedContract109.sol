pragma solidity ^0.5.0;

contract unOptimizedContract109 {
    // Storage variables
    uint public count;
    string public name;
    
    // Constructor
    constructor() public {
        count = 0;
        name = "unOptimizedContract109";
    }
    
    // Increment count
    function incrementCount() public {
        count++;
    }
    
    // Get count
    function getCount() public view returns (uint) {
        return count;
    }
    
    // Get name
    function getName() public view returns (string memory) {
        return name;
    }
}