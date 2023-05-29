pragma solidity ^0.5.0;

contract loops23 {
    // Loops23 contract

    uint256 public counter;

    constructor() public {
        counter = 0;
    }

    function loopCounter() public {
        // Simple unoptimized loop based pattern
        for (uint256 i = 0; i < 10; i++) {
            counter++;
        }
    }

}