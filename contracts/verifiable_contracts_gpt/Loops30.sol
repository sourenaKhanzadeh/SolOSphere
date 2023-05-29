pragma solidity ^0.6.6;

contract loops30 {
    uint256 public counter;

    constructor() public {
        counter = 0;
    }

    function loop30() public {
        for(uint256 i = 0; i < 30; i++) {
            counter++;
        }
    }
}