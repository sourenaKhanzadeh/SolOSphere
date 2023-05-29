pragma solidity ^0.5.0;

contract loops5 {
    uint256 public counter;

    constructor() public {
        counter = 0;
    }

    function loop5() public {
        for (uint256 i = 0; i < 5; i++) {
            counter++;
        }
    }

}