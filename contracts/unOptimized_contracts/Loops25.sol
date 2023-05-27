pragma solidity ^0.7.0;

contract loops25 {

    uint256 public counter;

    constructor() public {
        counter = 0;
    }

    function loopIt() public {
        for (uint256 i = 0; i < 25; i++) {
            counter++;
        }
    }

}