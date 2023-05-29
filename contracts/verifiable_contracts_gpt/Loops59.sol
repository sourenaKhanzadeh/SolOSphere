pragma solidity ^0.5.0;

contract loops59 {
    uint256 public count;

    function loop59() public {
        count = 0;
        for (uint256 i = 0; i < 59; i++) {
            count++;
        }
    }
}