pragma solidity ^0.5.0;

contract loops8 {
    uint256 public counter;

    constructor() public {
        counter = 0;
    }
    
    function loop() public {
        for (uint i = 0; i < 8; i++) {
            counter = counter + 1;
        }
    }
}