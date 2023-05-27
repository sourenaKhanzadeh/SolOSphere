pragma solidity ^0.5.0;

contract loops29 {
    uint256 public count;
    
    constructor() public {
        count = 0;
    }
    
    function loop() public {
        for (uint256 i = 0; i < 10; i++) {
            count++;
        }
    }
}