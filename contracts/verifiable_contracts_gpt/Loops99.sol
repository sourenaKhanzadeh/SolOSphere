pragma solidity ^0.6.0;

contract loops99 {
    uint public count = 0;

    function loop99() public {
        for (uint i = 0; i < 99; i++) {
            count++;
        }
    }
}