pragma solidity ^0.5.0;

contract loops15 {
    uint public count = 0;

    function loopCount() public returns (uint) {
        for (uint i = 0; i < 15; i++) {
            count++;
        }
        return count;
    }
}