pragma solidity ^0.5.0;

contract loops52 {
    uint256 public counter;

    constructor() public {
        counter = 0;
    }

    function loop52() public {
        for(uint256 i=0; i < 52; i++) {
            counter++;
        }
    }
}