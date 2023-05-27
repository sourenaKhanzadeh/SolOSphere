pragma solidity ^0.6.0;

contract loops28 {
    uint256 count;

    function loop() public {
        count = 0;
        for (uint256 i = 0; i < 28; i++) {
            count++;
        }
    }
}