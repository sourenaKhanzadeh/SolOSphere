pragma solidity ^0.5.0;

contract Loops39 {
    uint256 public counter;
    
    constructor() public {
        counter = 0;
    }
    
    // looping function
    function loop() public {
        for (uint256 i = 0; i < 39; i++) {
            counter++;
        }
    }
}