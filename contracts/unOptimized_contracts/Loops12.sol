pragma solidity ^0.5.0;

contract loops12 {
    uint256 public counter;

    // constructor
    constructor() public {
        counter = 0;
    }

    // function to increase counter
    function increaseCounter() public {
        for (uint256 i = 0; i < 12; i++) {
            counter++;
        }
    }
}