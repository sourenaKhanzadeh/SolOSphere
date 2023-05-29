pragma solidity ^0.5.0;

contract loops17 {
    uint256 public count;

    function loop() public {
        count = 0;
        for (uint256 i = 0; i < 17; i++) {
            count++;
        }
    }
}