pragma solidity ^0.7.0;

contract loops70 {
    uint256 public counter;

    constructor() public {
        counter = 0;
    }

    function loopTest() public {
        for (uint i = 0; i < 10; i++) {
            counter++;
        }
    }
}