pragma solidity ^0.5.0;

contract loops31 {
    uint256 public count;

    constructor() public {
        count = 0;
    }

    function loop31() public {
        for (uint256 i = 0; i < 31; i++) {
            count++;
        }
    }
}