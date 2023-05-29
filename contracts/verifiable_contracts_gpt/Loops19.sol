pragma solidity ^0.5.0;

contract loops19 {
    
    // storage variables
    uint256 public counter;
    
    // constructor
    constructor() public {
        counter = 0;
    }
    
    // loop based pattern
    function loopPattern() public {
        for (uint i = 0; i < 10; i++) {
            counter++;
        }
    }
}