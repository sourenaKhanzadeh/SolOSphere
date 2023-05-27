pragma solidity ^0.5.0;

contract loops58 {
    uint256 public counter;

    constructor() public {
        counter = 0;
    }

    function incrementCounter() public {
        for (uint256 i = 0; i < 58; i++) {
            counter++;
        }
    }
}