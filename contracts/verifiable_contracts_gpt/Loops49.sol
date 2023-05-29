pragma solidity ^0.5.16;

contract loops49 {
    uint256 public count;

    constructor() public {
        count = 0;
    }

    function increment() public {
        for (uint256 i = 0; i < 49; i++) {
            count++;
        }
    }
}