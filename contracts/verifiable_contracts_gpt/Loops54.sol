pragma solidity ^0.5.0;

contract loops54 {
    uint256 public counter;

    constructor() public {
        counter = 0;
    }

    function looping() public {
        for (uint256 i = 0; i < 10; i++) {
            counter++;
        }
    }
}