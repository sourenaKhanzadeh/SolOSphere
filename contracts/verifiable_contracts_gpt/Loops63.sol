pragma solidity ^0.6.3;

contract loops63 {
    uint256 public count;

    constructor() public {
        count = 0;
    }

    function incrementCounter() public {
        count++;
    }

    function loopCounter() public {
        for (uint256 i = 0; i < count; i++) {
            incrementCounter();
        }
    }

}