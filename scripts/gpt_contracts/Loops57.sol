pragma solidity ^0.5.0;

contract loops57 {
    
    // Declare a mapping to store the values
    mapping(uint => uint) public values;
    
    // Generate the loop pattern
    function generateLoop() public {
        uint i;
        for (i = 0; i < 57; i++) {
            values[i] = i * i;
        }
    }
}