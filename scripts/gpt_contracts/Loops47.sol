pragma solidity ^0.5.0;

contract loops47 {
    uint256 public counter;

    constructor() public {
        counter = 0;
    }

    function loop() public {
        for (uint256 i = 0; i < 10; i++) {
            counter++;
        }
    }
}