pragma solidity ^0.5.0;

contract loops53 {
    
    uint256 public counter;
    
    constructor() public {
        counter = 0;
    }
    
    function loopCounter() public {
        for(uint256 i = 0; i < 53; i++) {
            counter++;
        }
    }
}