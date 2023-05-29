pragma solidity ^0.5.0;

contract loops88 {
    uint256 public totalLoops;

    constructor() public {
        totalLoops = 0;
    }

    function loop() public {
        for (uint256 i = 0; i < 88; i++) {
            totalLoops++;
        }
    }
}