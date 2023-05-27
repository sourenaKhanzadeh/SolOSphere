pragma solidity ^0.5.1;

contract loops33 {
    uint256 public count;

    constructor() public {
        count = 0;
    }

    function loop33() public {
        for (uint256 i = 0; i < 33; i++) {
            count++;
        }
    }

}