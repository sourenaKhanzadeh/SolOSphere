pragma solidity ^0.5.0;

contract loops16 {
    uint public count;

    function loop() public {
        count = 0;
        for (uint i = 0; i < 16; i++) {
            count++;
        }
    }
}